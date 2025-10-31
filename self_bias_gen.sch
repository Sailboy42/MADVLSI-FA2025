v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -70 -10 -40 -10 {lab=Vrefg}
N -70 -10 -70 20 {lab=Vrefg}
N -80 -10 -70 -10 {lab=Vrefg}
N 80 -40 110 -40 {lab=Vbn}
N 80 -40 80 -10 {lab=Vbn}
N 80 -120 80 -90 {lab=Vbp}
N 80 -120 110 -120 {lab=Vbp}
N 110 -60 110 -40 {lab=Vbn}
C {madvlsi/nmos3.sym} 110 50 0 0 {name=M1
L=1
W=5
body=GND
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {madvlsi/resistor.sym} -140 -110 1 0 {name=Rext
value=33k}
C {madvlsi/gnd.sym} 110 80 0 0 {name=l2 lab=GND}
C {lab_pin.sym} 80 50 2 1 {name=p1 sig_type=std_logic lab=Vrefg}
C {madvlsi/vsource.sym} -170 20 0 0 {name=Vref
value=1.8}
C {madvlsi/gnd.sym} -170 50 0 0 {name=l3 lab=GND}
C {lab_pin.sym} -170 -10 0 0 {name=p2 sig_type=std_logic lab=Vref}
C {lab_pin.sym} -170 -110 0 0 {name=p3 sig_type=std_logic lab=Vref}
C {lab_pin.sym} -110 -110 2 0 {name=p4 sig_type=std_logic lab=Vrefg}
C {madvlsi/nmos3.sym} 110 -10 0 0 {name=M2
L=1
W=5
body=GND
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {lab_pin.sym} 80 -10 0 0 {name=p5 sig_type=std_logic lab=Vbn}
C {madvlsi/nmos3.sym} -40 20 0 0 {name=M5
L=1
W=5
body=GND
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {madvlsi/gnd.sym} -40 50 0 0 {name=l1 lab=GND}
C {lab_pin.sym} -80 -10 2 1 {name=p7 sig_type=std_logic lab=Vrefg}
C {madvlsi/pmos3.sym} 110 -90 0 0 {name=M3
L=0.15
W=1
body=VDD
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {lab_pin.sym} 80 -90 0 0 {name=p8 sig_type=std_logic lab=Vbp}
