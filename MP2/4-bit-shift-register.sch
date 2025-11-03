v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
L 4 -240 20 -240 70 {}
L 4 -240 70 -110 70 {}
L 4 -110 20 -110 70 {}
L 4 20 20 20 70 {}
L 4 150 20 150 70 {}
L 4 20 70 150 70 {}
L 4 -110 70 20 70 {}
L 4 -300 70 -240 70 {}
L 4 -290 0 -240 0 {}
L 4 -160 -0 -110 -0 {}
L 4 -30 0 20 0 {}
L 4 100 0 150 -0 {}
L 4 -140 -40 -140 0 {}
L 4 -0 -40 -0 -0 {}
L 4 120 -40 120 0 {}
L 4 230 0 260 0 {}
L 4 -160 20 -160 100 {}
L 4 -30 20 -30 100 {}
L 4 100 20 100 100 {}
L 4 230 20 230 90 {}
C {ipin.sym} -300 70 0 0 {name=p2 lab=CLK}
C {ipin.sym} -290 0 0 0 {name=p3 lab=DIN}
C {edge-triggered-D-flip-flop.sym} -200 10 0 0 {name=x1}
C {edge-triggered-D-flip-flop.sym} -70 10 0 0 {name=x2}
C {edge-triggered-D-flip-flop.sym} 60 10 0 0 {name=x3}
C {edge-triggered-D-flip-flop.sym} 190 10 0 0 {name=x4}
C {opin.sym} -140 -40 0 0 {name=p1 lab=Q0}
C {opin.sym} 0 -40 0 0 {name=p4 lab=Q1}
C {opin.sym} 120 -40 0 0 {name=p5 lab=Q2}
C {opin.sym} 260 0 0 0 {name=p6 lab=Q3}
C {opin.sym} 230 90 1 0 {name=p7 lab=Q3b}
C {opin.sym} 100 100 1 0 {name=p8 lab=Q2b}
C {opin.sym} -30 100 1 0 {name=p9 lab=Q1b}
C {opin.sym} -160 100 1 0 {name=p10 lab=Q0b}
C {madvlsi/vsource.sym} -450 -110 0 0 {name=VDD
value=1.8}
C {madvlsi/vsource.sym} -450 10 0 0 {name=VSS
value=0}
C {madvlsi/vsource.sym} -320 -110 0 0 {name=VCLK
value=pulse(0 1.8 0 50p 50p 5n 10n)}
C {madvlsi/vsource.sym} -160 -110 0 0 {name=VDIN
value=PWL( 0n 0 12n 1.8 24n 0 36n 1.8 48n 1.8 60n 0 120n 0 )}
C {madvlsi/vdd.sym} -450 -140 0 0 {name=l1 lab=VDD}
C {madvlsi/gnd.sym} -450 40 0 0 {name=l2 lab=GND}
C {opin.sym} -320 -140 0 0 {name=p11 lab=CLK}
C {opin.sym} -160 -140 0 0 {name=p12 lab=DIN}
C {madvlsi/gnd.sym} -320 -80 0 0 {name=l3 lab=GND}
C {madvlsi/gnd.sym} -160 -80 0 0 {name=l4 lab=GND}
C {sky130_fd_pr/corner.sym} 270 170 0 0 {name=TT_MODELS
}
C {code_shown.sym} 80 -160 0 0 {name=SPICE only_toplevel=false value=".tran 0.01n 200n
.save all 
.end"}
C {madvlsi/gnd.sym} -450 -80 0 0 {name=l5 lab=GND}
C {madvlsi/vdd.sym} -200 -30 0 0 {name=l6 lab=VDD}
C {madvlsi/vdd.sym} -70 -30 0 0 {name=l7 lab=VDD}
C {madvlsi/vdd.sym} 60 -30 0 0 {name=l8 lab=VDD}
C {madvlsi/vdd.sym} 190 -30 0 0 {name=l9 lab=VDD}
C {lab_pin.sym} -200 50 0 0 {name=p14 sig_type=std_logic lab=VSS}
C {lab_pin.sym} -70 50 0 0 {name=p15 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 60 50 0 0 {name=p16 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 190 50 0 0 {name=p17 sig_type=std_logic lab=VSS}
C {lab_pin.sym} -450 -20 0 0 {name=p13 sig_type=std_logic lab=VSS}
