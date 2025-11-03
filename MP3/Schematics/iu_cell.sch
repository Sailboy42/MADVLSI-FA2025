v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -30 -10 -30 10 {lab=#net1}
N -220 20 -190 20 {lab=VREFG}
N -220 20 -220 50 {lab=VREFG}
N -230 20 -220 20 {lab=VREFG}
C {madvlsi/nmos3.sym} -30 -40 0 0 {name=M1
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
C {madvlsi/nmos3.sym} -30 40 0 0 {name=M2
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
C {lab_pin.sym} -60 -40 0 0 {name=p1 sig_type=std_logic lab=VCAS}
C {lab_pin.sym} -60 40 0 0 {name=p2 sig_type=std_logic lab=VREFG}
C {madvlsi/gnd.sym} -30 70 0 0 {name=l1 lab=GND}
C {lab_pin.sym} -30 -70 0 0 {name=p3 sig_type=std_logic lab=D}
C {madvlsi/nmos3.sym} -190 50 0 0 {name=M3
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
C {madvlsi/resistor.sym} -320 -50 1 0 {name=EXT_REF
value=33k
m=1}
C {madvlsi/gnd.sym} -190 80 0 0 {name=l2 lab=GND}
C {lab_pin.sym} -230 20 2 1 {name=p4 sig_type=std_logic lab=VREFG}
C {madvlsi/vsource.sym} -410 20 0 0 {name=VREF
value=1}
C {madvlsi/gnd.sym} -410 50 0 0 {name=l3 lab=GND}
C {lab_pin.sym} -410 -10 0 0 {name=p5 sig_type=std_logic lab=VREF}
C {lab_pin.sym} -350 -50 0 0 {name=p6 sig_type=std_logic lab=VREF}
C {lab_pin.sym} -290 -50 2 0 {name=p7 sig_type=std_logic lab=VREFG}
C {madvlsi/vsource.sym} -320 70 0 0 {name=VREF1
value=1}
C {madvlsi/gnd.sym} -320 100 0 0 {name=l4 lab=GND}
C {lab_pin.sym} -320 40 0 0 {name=p8 sig_type=std_logic lab=VCAS}
