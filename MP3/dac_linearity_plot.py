#!/usr/bin/env python3
# dac_linearity_plot.py
import argparse, sys, pathlib
import numpy as np
import pandas as pd
import matplotlib.pyplot as plt

# ----------------------------- Helpers -----------------------------
def find_col(df, names):
    """Return the first matching column name (case-insensitive) or None."""
    lower = {c.lower(): c for c in df.columns}
    for n in names:
        c = lower.get(n.lower())
        if c is not None:
            return c
    return None

def detect_bit_columns(df):
    """Find 7 digital input columns (bit lines) using common conventions."""
    cols = list(df.columns)
    cands = [
        [f"v(b{k})" for k in range(7)],
        [f"V{k}"     for k in range(7)],
        [f"v{k}"     for k in range(7)],
    ]
    for names in cands:
        if all(n in cols for n in names):
            return names
    raise ValueError("Could not detect 7 bit columns (expected v(b0..6), V0..6, or v0..6).")

def decode_code(df, bit_cols):
    """Threshold bits and choose MSB/LSB orientation by correlation with output."""
    # Logic threshold: half VDD if present, else 0.9 V
    vdd_col = find_col(df, ["vdd"])
    vth = 0.5 * (df[vdd_col].iloc[0] if vdd_col else 1.8)
    bits = (df[bit_cols] > vth).astype(int)

    # Output current column (case-insensitive search)
    iout_col = find_col(df, ["i(Viout)", "i(vout)", "iout"])
    if not iout_col:
        raise ValueError("Couldn't find output current column (try i(Viout)).")
    iout = df[iout_col].to_numpy()

    # Try b0 as MSB vs LSB; pick orientation with higher |corr|
    w_msb = 2 ** np.arange(bits.shape[1]-1, -1, -1)  # b0..b6 = MSB..LSB
    w_lsb = 2 ** np.arange(0, bits.shape[1])         # b0..b6 = LSB..MSB
    code_msb = (bits.values * w_msb).sum(axis=1)
    code_lsb = (bits.values * w_lsb).sum(axis=1)
    corr_m = np.corrcoef(code_msb, iout)[0, 1]
    corr_l = np.corrcoef(code_lsb, iout)[0, 1]
    code = code_msb if abs(corr_m) >= abs(corr_l) else code_lsb
    return code, bits, iout_col

def process_file(path):
    df = pd.read_csv(path, delim_whitespace=True)
    bit_cols = detect_bit_columns(df)
    code, bits, iout_col = decode_code(df, bit_cols)

    # Use i(Vib) if present to carry along (optional)
    iin_col = find_col(df, ["i(Vib)", "i(ib)", "iin"])

    work = pd.DataFrame({
        "code": code,
        "iout": df[iout_col],
        "iin":  df[iin_col] if iin_col else np.nan,
    })

    # Average duplicates per code and sort
    g = work.groupby("code", as_index=False).agg(iout=("iout", "mean"), iin=("iin", "mean"))
    g = g.sort_values("code").reset_index(drop=True)

    code_min, code_max = int(g["code"].min()), int(g["code"].max())
    Nsteps = max(code_max - code_min, 1)
    I0  = g.loc[g["code"] == code_min, "iout"].iloc[0]
    IFS = g.loc[g["code"] == code_max, "iout"].iloc[0]
    LSB_ep = (IFS - I0) / Nsteps

    # DNL (endpoint)
    steps = g["iout"].diff()
    dnl = steps.iloc[1:] / LSB_ep - 1.0
    dnl_codes = g["code"].iloc[1:]

    # INL (endpoint)
    ideal_ep = I0 + (g["code"] - code_min) * LSB_ep
    inl_ep = (g["iout"] - ideal_ep) / LSB_ep

    # INL (best-fit)
    m, b = np.polyfit(g["code"], g["iout"], 1)
    inl_bf = (g["iout"] - (b + m * g["code"])) / m

    return {
        "per_code": g,
        "code_min": code_min,
        "code_max": code_max,
        "I0": I0,
        "IFS": IFS,
        "LSB_ep": LSB_ep,
        "dnl_codes": dnl_codes.to_numpy(),
        "dnl": dnl.to_numpy(),
        "inl_ep": inl_ep.to_numpy(),
        "inl_bf": inl_bf.to_numpy(),
    }

# ----------------------------- Plotting -----------------------------
def plot_overlays(datasets, labels):
    # 1) Output current vs code
    plt.figure()
    for d, label in zip(datasets, labels):
        g = d["per_code"]
        plt.plot(g["code"], g["iout"], label=label)
    plt.xlabel("DAC Code")
    plt.ylabel("iout [A]")
    plt.title("DAC Output Current vs Code")
    plt.grid(True)
    plt.legend()

    # 2) Normalized transfer vs ideal
    plt.figure()
    common_min = max(d["code_min"] for d in datasets)
    common_max = min(d["code_max"] for d in datasets)
    for d, label in zip(datasets, labels):
        g = d["per_code"]
        norm = (g["iout"] - d["I0"]) / (d["IFS"] - d["I0"]) if (d["IFS"] - d["I0"]) != 0 else np.zeros_like(g["iout"])
        plt.plot(g["code"], norm, label=f"{label} (meas)")
    ideal_x = np.arange(common_min, common_max + 1)
    ideal_y = (ideal_x - common_min) / max(common_max - common_min, 1)
    plt.plot(ideal_x, ideal_y, label="Ideal")
    plt.xlabel("DAC Code")
    plt.ylabel("Normalized Output (0–1)")
    plt.title("Normalized Transfer (Measured vs Ideal)")
    plt.grid(True)
    plt.legend()

    # 3) DNL (endpoint)
    plt.figure()
    for d, label in zip(datasets, labels):
        codes = d["dnl_codes"]
        vals  = d["dnl"]
        mask = (codes >= common_min) & (codes <= common_max)
        plt.plot(codes[mask], vals[mask], label=label)
    plt.axhline(0, linewidth=1)
    plt.xlabel("DAC Code")
    plt.ylabel("DNL [LSB]")
    plt.title("Differential Nonlinearity (Endpoint)")
    plt.grid(True)
    plt.legend()

    # 4) INL (best-fit)
    plt.figure()
    for d, label in zip(datasets, labels):
        g = d["per_code"]
        mask = (g["code"] >= common_min) & (g["code"] <= common_max)
        plt.plot(g["code"][mask], d["inl_bf"][mask], label=label)
    plt.axhline(0, linewidth=1)
    plt.xlabel("DAC Code")
    plt.ylabel("INL (best-fit) [LSB]")
    plt.title("Integral Nonlinearity (Best-Fit)")
    plt.grid(True)
    plt.legend()

def save_csvs(datasets, labels, outdir: pathlib.Path):
    outdir.mkdir(parents=True, exist_ok=True)
    for d, label in zip(datasets, labels):
        g = d["per_code"].copy()
        g["norm_0to1"] = (g["iout"] - d["I0"]) / (d["IFS"] - d["I0"]) if (d["IFS"] - d["I0"]) != 0 else np.nan
        g.to_csv(outdir / f"{label}_per_code.csv", index=False)
        pd.DataFrame({"code": d["dnl_codes"], "dnl_lsb": d["dnl"]}).to_csv(outdir / f"{label}_DNL.csv", index=False)
        pd.DataFrame({
            "code": g["code"],
            "inl_ep_lsb": d["inl_ep"],
            "inl_bf_lsb": d["inl_bf"],
        }).to_csv(outdir / f"{label}_INL.csv", index=False)

# ----------------------------- Main -----------------------------
def main():
    ap = argparse.ArgumentParser(description="Plot DAC transfer, DNL, and INL from ngspice sweeps.")
    ap.add_argument("files", nargs="+", help="Whitespace-delimited data files (e.g., ieeeDAC_1.txt)")
    ap.add_argument("--save", metavar="DIR", help="Save CSVs to DIR (optional).")
    args = ap.parse_args()

    datasets, labels = [], []
    for f in args.files:
        d = process_file(f)
        datasets.append(d)
        labels.append(pathlib.Path(f).stem)

    plot_overlays(datasets, labels)

    if args.save:
        save_csvs(datasets, labels, pathlib.Path(args.save))
        print(f"CSVs saved to: {args.save}")

    plt.show()

if __name__ == "__main__":
    sys.exit(main())
