# Low-Power 8–10-bit Capacitive SAR ADC on SKY130 with StrongARM Comparator

Owen Himsworth \
MADVLSI FA2025 \
Oct 3rd, 2025 \
Prof. Brad Minch

## Team

Solo

## Motivation / Problem Statement

Embedded systems and sensor nodes need energy-efficient, moderate-resolution data converters. A capacitive SAR ADC offers excellent energy efficiency and small area with a clean digital interface—ideal for on-chip sensing and microcontroller peripherals. 

This project while being practical circuit also provides a fair mix of analog and digital work.

## Objectives (measurable)

- Resolution: 8–10 bits; target ENOB ≥ 8.8 (for 10-bit target)
- Throughput: 50–200 kS/s (configurable by bit-trial clock)
- Static linearity: |INL| ≤ 1.0 LSB, |DNL| ≤ 1.0 LSB (TT, post-layout target)
- Power: ≤ 1 mW at nominal rate; report energy/conversion
- Area: ≤ 0.2–0.4 mm² total (goal; dominated by C-DAC)

## Scope

- Analog: Binary-weighted C-DAC with bottom-plate sampling; sampling switch; StrongARM latch comparator; simple reference filtering/decaps
- Digital: SAR state machine, bit-trial timing, end-of-conversion logic; optional clock divider
- Testbenches: Code-density ramp (INL/DNL), sine FFT (SNR/ENOB), supply/clock sensitivity

## Methodology / Tools

- Schematic/sim: xschem + ngspice (behavioral first, then transistor-level)
- Layout: Magic (common-centroid cap array, shielding, guard rings, decap)
- Verification: DRC/LVS (Netgen), post-layout sims (ngspice)
- Monte Carlo: capacitor mismatch (σC/C), limited device mismatch on comparator
- PVT: TT/FF/SS, VDD ±10% (trimmed set to fit schedule)

## Architecture & Key Design Choices

- C-DAC: Binary-weighted with unit C ≈ 10–30 fF (trade area vs. kT/C noise & settling)
- Sampling: Bottom-plate sampling to reduce kickback; transmission-gate sized for RC < ¼ bit-trial window
- Comparator: Dynamic StrongARM (zero static bias), sized for adequate overdrive/time; optional preamp if metastability observed
- Timing: MSB-first successive approximation with non-overlap phases (sample → decide[MSB…LSB])
- References: On-chip decaps and RC de-ringing near DAC; short routes and shielding

## Deliverables

- Schematics & layout (screenshots)
- Pre- and post-layout metrics: INL/DNL plots, sine FFT → SNR/ENOB, power vs. rate
- PVT & limited MC summary; discussion of error sources and mitigations
- Short user guide: pins, timing diagram, and operating points

## Schedule

- Nov 2–8: Specs freeze; ideal behavioral SAR loop; timing verified
- Nov 9–15: Transistor-level blocks (C-DAC, switches, StrongARM) closed at TT; full pre-layout sims for ramp/FFT
- Nov 16–22: Layout (cap array CC placement, comparator, refs); DRC/LVS
- Nov 23–29: Post-layout sims; line up INL/DNL, ENOB; quick PVT & MC; finalize figures
- Nov 30–Dec 6: Report writing, figure polish, slide deck

## Risks & Mitigations

- Settling shortfall: lengthen bit-trial period or drop to 8-bit; upsize switches selectively
- Comparator metastability: increase decision time; add tiny preamp; adjust input common-mode
- Layout-induced mismatch: stricter common-centroiding & symmetric routing; add dummies

## Stretch Goals (time-permitting)

- Non-binary (redundant) SAR to relax settling
- Simple digital calibration (gain/offset)
- On-chip ramp or tone BIST source

## Logistics

- PDK/Flow: SKY130A; OSS-CAD-Suite; xschem, ngspice, Magic, Netgen
- Version control & artifacts: GitHub repo with `/schem`, `/sim`, `/layout`, `/docs`; scripted ngspice runs for repeatable figures
- Evaluation criteria: Clear specs; pre/post-layout correlation; PVT/MC evidence; layout quality; discussion of trade-offs; professional figures and captions