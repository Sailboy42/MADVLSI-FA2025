#!/usr/bin/env python3
# dac_mc_linearity.py
import argparse, sys, pathlib, glob
import numpy as np
import pandas as pd
import matplotlib.pyplot as plt

# ---------------- Utilities ----------------
def _find_col(df, names):
    lower = {c.lower(): c for c in df.columns}
    for n in names:
        c = lower.get(n.lower())
        if c is not None:
            return c
    return None

def _detect_bit_cols(df):
    cols = list(df.columns)
    cands = [[f"v(b{k})" for k in range(7)],
             [f"V{k}" for k in range(7)],
             [f"v{k}" for k in range(7)]]
    for cand in cands:
        if all(c in cols for c in cand):
            return cand
    raise ValueError("Could not find 7 bit columns (v(b0..6), V0..6, or v0..6).")

def _decode_code(df, bit_cols, iout_col):
    vdd_col = _find_col(df, ["vdd"])
    vth = 0.5 * (df[vdd_col].iloc[0] if vdd_col else 1.8)
    bits = (df[bit_cols] > vth).astype(int)

    # choose bit order by correlation with iout
    iout = df[iout_col].to_numpy()
    w_msb = 2 ** np.arange(bits.shape[1]-1, -1, -1)
    w_lsb = 2 ** np.arange(0, bits.shape[1])
    code_msb = (bits.values * w_msb).sum(axis=1)
    code_lsb = (bits.values * w_lsb).sum(axis=1)
    corr_m = np.corrcoef(code_msb, iout)[0,1]
    corr_l = np.corrcoef(code_lsb, iout)[0,1]
    return (code_msb if abs(corr_m) >= abs(corr_l) else code_lsb)

def process_one(path: pathlib.Path):
    df = pd.read_csv(path, delim_whitespace=True)
    iout_col = _find_col(df, ["i(Viout)", "i(vout)", "iout"])
    if not iout_col:
        raise ValueError(f"{path.name}: no i(Viout) column.")

    bit_cols = _detect_bit_cols(df)
    code = _decode_code(df, bit_cols, iout_col)

    work = pd.DataFrame({"code": code, "iout": df[iout_col]})
    g = (work.groupby("code", as_index=False)
               .agg(iout=("iout","mean"))
               .sort_values("code").reset_index(drop=True))

    cmin, cmax = int(g.code.min()), int(g.code.max())
    I0 = g.loc[g.code==cmin, "iout"].iloc[0]
    IFS = g.loc[g.code==cmax, "iout"].iloc[0]
    N = max(cmax - cmin, 1)
    LSB = (IFS - I0)/N

    steps = g.iout.diff()
    dnl_codes = g.code.iloc[1:].to_numpy()
    dnl = (steps.iloc[1:] / LSB - 1.0).to_numpy()

    ideal_ep = I0 + (g.code - cmin)*LSB
    inl_ep = ((g.iout - ideal_ep) / LSB).to_numpy()

    m, b = np.polyfit(g.code, g.iout, 1)
    inl_bf = ((g.iout - (b + m*g.code)) / m).to_numpy()

    # Quality flags
    nonmono = int((steps.iloc[1:] < 0).sum())
    missing = int((dnl < -1.0).sum())
    gain_err_pct = (m/LSB - 1.0) * 100.0
    off_err_lsb = (b - I0) / LSB

    return dict(
        file=str(path),
        per_code=g,
        code_min=cmin, code_max=cmax, LSB=LSB,
        dnl_codes=dnl_codes, dnl=dnl,
        inl_ep=inl_ep, inl_bf=inl_bf,
        I0=I0, IFS=IFS, gain_err_pct=gain_err_pct, off_err_lsb=off_err_lsb,
        nonmono=nonmono, missing=missing,
        dnl_max=float(np.nanmax(dnl)), dnl_min=float(np.nanmin(dnl)),
        inlbf_max=float(np.nanmax(inl_bf)), inlbf_min=float(np.nanmin(inl_bf)),
        inlbf_maxabs=float(np.nanmax(np.abs(inl_bf))),
        dnl_maxabs=float(np.nanmax(np.abs(dnl))),
    )

# ---------------- Plotting ----------------
def overlay_and_stats(runs, title_suffix="", use_inl="bf", per_run=False):
    # common code range
    cmin = max(r["code_min"] for r in runs)
    cmax = min(r["code_max"] for r in runs)
    codes = None

    # build aligned matrices
    inls, dnls = [], []
    for r in runs:
        g = r["per_code"]
        mask = (g.code >= cmin) & (g.code <= cmax)
        if codes is None:
            codes = g.code[mask].to_numpy()
        # best-fit INL at these codes
        m, b = np.polyfit(g.code, g.iout, 1)
        inl_bf = ((g.iout - (b + m*g.code)) / m)[mask].to_numpy()
        # endpoint DNL recomputed on this segment
        I0 = g.loc[g.code==g.code.min(),"iout"].iloc[0]
        IFS = g.loc[g.code==g.code.max(),"iout"].iloc[0]
        LSB = (IFS - I0) / max(g.code.max()-g.code.min(), 1)
        steps = g.iout.diff()
        dnl_seg_codes = g.code.iloc[1:]
        dnl_seg = (steps.iloc[1:] / LSB - 1.0).to_numpy()
        # align DNL to codes[1:]
        mask_d = (dnl_seg_codes >= cmin) & (dnl_seg_codes <= cmax)
        dnls.append(dnl_seg[mask_d])
        inls.append(inl_bf)

    inls = np.vstack(inls)          # shape: (Nruns, Ncodes)
    dnls = np.vstack(dnls)          # shape: (Nruns, Ncodes-1)
    codes_d = codes[1:]

    # overlays
    plt.figure()
    if per_run:
        # plot each run with a distinct color and label (no mean)
        for i, row in enumerate(inls):
            label = pathlib.Path(runs[i]["file"]).name
            plt.plot(codes, row, alpha=0.9, label=label)
        plt.legend(fontsize='small', ncol=2)
    else:
        for row in inls:
            plt.plot(codes, row, alpha=0.2)
        mu = np.nanmean(inls, axis=0); sigma = np.nanstd(inls, axis=0, ddof=1)
        plt.plot(codes, mu, linewidth=2, label="Mean")
        plt.fill_between(codes, mu-3*sigma, mu+3*sigma, alpha=0.15, label="±3σ")
        plt.legend()
    plt.axhline(0, linewidth=1)
    plt.xlabel("DAC Code"); plt.ylabel("INL (best-fit) [LSB]")
    plt.title(f"Monte Carlo INL (best-fit) {title_suffix}")
    plt.grid(True)

    plt.figure()
    if per_run:
        for i, row in enumerate(dnls):
            label = pathlib.Path(runs[i]["file"]).name
            plt.plot(codes_d, row, alpha=0.9, label=label)
        plt.legend(fontsize='small', ncol=2)
    else:
        for row in dnls:
            plt.plot(codes_d, row, alpha=0.2)
        mu = np.nanmean(dnls, axis=0); sigma = np.nanstd(dnls, axis=0, ddof=1)
        plt.plot(codes_d, mu, linewidth=2, label="Mean")
        plt.fill_between(codes_d, mu-3*sigma, mu+3*sigma, alpha=0.15, label="±3σ")
        plt.legend()
    plt.axhline(0, linewidth=1)
    plt.xlabel("DAC Code"); plt.ylabel("DNL (endpoint) [LSB]")
    plt.title(f"Monte Carlo DNL (endpoint) {title_suffix}")
    plt.grid(True)

def histograms(runs, spec_dnl=None, spec_inl=None):
    dnl_peaks = [r["dnl_maxabs"] for r in runs]
    inl_peaks = [r["inlbf_maxabs"] for r in runs]

    plt.figure()
    plt.hist(dnl_peaks, bins="auto")
    if spec_dnl is not None: plt.axvline(spec_dnl, linestyle="--")
    plt.xlabel("Max |DNL| per run [LSB]"); plt.ylabel("Count")
    plt.title("Histogram of Max |DNL|")

    plt.figure()
    plt.hist(inl_peaks, bins="auto")
    if spec_inl is not None: plt.axvline(spec_inl, linestyle="--")
    plt.xlabel("Max |INL| (best-fit) per run [LSB]"); plt.ylabel("Count")
    plt.title("Histogram of Max |INL| (best-fit)")

    if spec_dnl is not None or spec_inl is not None:
        ok_dnl = sum(x <= (spec_dnl if spec_dnl is not None else np.inf) for x in dnl_peaks)
        ok_inl = sum(x <= (spec_inl if spec_inl is not None else np.inf) for x in inl_peaks)
        print(f"Yield vs specs — DNL≤{spec_dnl}: {ok_dnl}/{len(runs)}; INL≤{spec_inl}: {ok_inl}/{len(runs)}")

def save_summary_csv(runs, out_csv: pathlib.Path):
    rows = []
    for r in runs:
        rows.append({
            "file": pathlib.Path(r["file"]).name,
            "code_min": r["code_min"], "code_max": r["code_max"],
            "LSB_endpoint[A]": r["LSB"],
            "gain_error[%]": r["gain_err_pct"], "offset_error[LSB]": r["off_err_lsb"],
            "DNL_min[LSB]": r["dnl_min"], "DNL_max[LSB]": r["dnl_max"], "Max|DNL|[LSB]": r["dnl_maxabs"],
            "INLbf_min[LSB]": r["inlbf_min"], "INLbf_max[LSB]": r["inlbf_max"], "Max|INLbf|[LSB]": r["inlbf_maxabs"],
            "nonmonotonic_steps": r["nonmono"], "missing_codes": r["missing"],
        })
    pd.DataFrame(rows).to_csv(out_csv, index=False)
    print(f"Wrote: {out_csv}")

# ---------------- Main ----------------
def main():
    ap = argparse.ArgumentParser(description="Monte Carlo DAC linearity: DNL/INL over many runs.")
    ap.add_argument("inputs", nargs="+", help="Files, directories, or glob patterns (e.g. runs/*.txt)")
    ap.add_argument("--spec-dnl", type=float, default=None, help="DNL spec in LSB for yield line.")
    ap.add_argument("--spec-inl", type=float, default=None, help="INL spec in LSB for yield line.")
    ap.add_argument("--out-csv", type=pathlib.Path, default=pathlib.Path("mc_summary.csv"))
    ap.add_argument("--per-run", action="store_true", help="Plot each run individually instead of showing mean/±3σ")
    args = ap.parse_args()

    files = []
    for inp in args.inputs:
        p = pathlib.Path(inp)
        if p.is_dir():
            files.extend(sorted([str(x) for x in p.glob("*.txt")]))
        else:
            files.extend(glob.glob(inp))
    files = sorted(set(files))
    if not files:
        print("No input files found.", file=sys.stderr); return 2

    runs = []
    for f in files:
        try:
            runs.append(process_one(pathlib.Path(f)))
        except Exception as e:
            print(f"[skip] {f}: {e}", file=sys.stderr)

    if not runs:
        print("No valid runs processed.", file=sys.stderr); return 2

    overlay_and_stats(runs, title_suffix=f"({len(runs)} runs)", per_run=args.per_run)
    histograms(runs, spec_dnl=args.spec_dnl, spec_inl=args.spec_inl)
    save_summary_csv(runs, args.out_csv)

    plt.show()
    return 0

if __name__ == "__main__":
    raise SystemExit(main())
