# Two-Stage 1.8 V CMOS Operational Amplifier on SKY130

Owen Himsworth \
MADVLSI FA2025 \
Oct 3rd, 2025 \
Prof. Brad Minch

## Team

Solo

## Motivation / Problem Statement

Precision amplification remains a cornerstone of sensor front-ends, active filters, and ΣΔ ADCs. Designing a stable, low-power op-amp under 1.8 V headroom on SKY130 demonstrates core analog skills: biasing, stability, compensation, and layout for matching. 

This project provides the opportunity for a focus on analog design.

## Objectives (measurable)

- DC Gain: 60–70 dB (TT, 27 °C)
- Unity-Gain Bandwidth (UGB): 10–20 MHz into CL = 2–5 pF
- Phase Margin: ≥ 60° with the actual pad/CL model
- Slew Rate: ≥ 5 V/µs (nominal)
- Input-referred noise: ≤ ~60 nV/√Hz @ 10 kHz (report full curve)
- Offset: ≤ 2–3 mV (post-layout expectation; MC reported)

## Scope

- Core OTA: PMOS input differential pair, second gain stage, Miller compensation (Ccomp) with Rz for zero-nulling; single-ended output
- Biasing: Mirrored bias network with startup; corners verified
- Load/Use-Case: Unity-gain buffer demo and one embedded application:

  (A) 1st-order switched-cap ΣΔ integrator loop (behavioral quantizer) to produce a spectrum, or

  (B) Gm-C active low-pass filter (simple pole) to show stability in-application

- Testbenches: AC (A0/UGB/PM), step (SR, settling/overshoot), noise, PSRR/CMRR, ICMR/OCMR; corners + MC

## Methodology / Tools

- Schematic/sim: xschem + ngspice
- Layout: Magic (common-centroid devices for input pair and mirrors; tight comp-loop routing; guard rings and local decaps)
- Verification: DRC/LVS (Netgen), PEX + post-layout closure; realistic pad + CL included early

## Architecture & Key Design Choices

- Topology: Two-stage OTA to meet gain at 1.8 V; PMOS input to maximize input CM range near VDD
- Compensation: Miller C with series Rz to place LHP zero for phase boost; size via AC loop-gain fits
- Output stability: Consider small Rout/RC snubber if board/pad adds large C
- Noise/Offset: Area-for-noise trade in input pair; symmetric layout; report MC offset

## Deliverables

- Schematic and layout snapshots with annotation of critical nodes/loops
- Bode/step/noise plots (pre-/post-layout), PSRR/CMRR, ICMR/OCMR
- PVT sweep table; mismatch MC histograms for offset and PM/UGB
- System demo results (ΣΔ spectrum or filter response) tying OTA specs to application behavior
- Short usage note: recommended load, common-mode limits, and stability guidance

## Schedule

- Nov 2–8: Spec & load model freeze; biasing + first-cut comp achieving ≥ 60° PM at nominal CL
- Nov 9–15: Close nominal AC/Transient/Noise; add pad + board parasitics; iterate Rz/Ccomp
- Nov 16–22: Layout with centroided input/mirrors; compact comp-loop; DRC/LVS
- Nov 23–29: PEX; re-tune for PM/UGB/SR; corners + small MC; generate figures
- Nov 30–Dec 6: Build and simulate the embedded demo; finalize report and slides

## Risks & Mitigations

- Phase margin collapse post-layout: shorten comp-loop routes; adjust Rz/Ccomp; add small output isolation R if CL uncertain
- Headroom/swing limits: verify ICMR/OCMR early; adjust tail and load devices; accept reduced swing if necessary and document
- Noise/offset higher than target: increase input pair area; improve symmetry; document trade-offs

## Stretch Goals (time-permitting)

- Rail-to-rail input variant (split pairs) or simple chopper offset cancel (with ripple filter)
- Fully differential OTA + CMFB (if time allows, otherwise document as future work)

## Logistics

- PDK/Flow: SKY130A; OSS-CAD-Suite; xschem, ngspice, Magic, Netgen
- Version control & artifacts: GitHub repo with `/schem`, `/sim`, `/layout`, `/docs`; scripted ngspice runs for repeatable figures
- Evaluation criteria: Clear specs; pre/post-layout correlation; PVT/MC evidence; layout quality; discussion of trade-offs; professional figures and captions
