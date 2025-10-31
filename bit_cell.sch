v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -560 40 -560 60 {lab=#net1}
N -320 0 -260 0 {lab=D}
N -260 60 -210 60 {lab=D}
N -260 0 -260 60 {lab=D}
N -320 60 -320 70 {lab=IOUT}
N -320 70 -250 70 {lab=IOUT}
N -250 0 -250 70 {lab=IOUT}
N -250 0 -210 0 {lab=IOUT}
N -210 60 -190 60 {lab=D}
N -210 0 -190 0 {lab=IOUT}
N -110 0 -50 0 {lab=D}
N -50 60 0 60 {lab=D}
N -50 0 -50 60 {lab=D}
N -110 60 -110 70 {lab=IDUMP}
N -110 70 -40 70 {lab=IDUMP}
N -40 0 -40 70 {lab=IDUMP}
N -40 0 0 0 {lab=IDUMP}
N 0 60 20 60 {lab=D}
N 0 0 20 0 {lab=IDUMP}
N -160 30 -150 30 {lab=B}
N -150 30 -140 30 {lab=B}
N -350 30 -350 130 {lab=BBAR}
N -350 130 -150 130 {lab=BBAR}
N -150 130 50 130 {lab=BBAR}
N 50 30 50 130 {lab=BBAR}
N -50 -10 -50 0 {lab=D}
N -150 -10 -50 -10 {lab=D}
N -260 -10 -150 -10 {lab=D}
N -260 -10 -260 0 {lab=D}
N -280 260 -250 260 {lab=VREFG}
N -280 260 -280 290 {lab=VREFG}
N -290 260 -280 260 {lab=VREFG}
C {madvlsi/nmos3.sym} -560 10 0 0 {name=M1
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
C {madvlsi/nmos3.sym} -560 90 0 0 {name=M2
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
C {lab_pin.sym} -590 10 0 0 {name=p1 sig_type=std_logic lab=VCAS}
C {lab_pin.sym} -590 90 0 0 {name=p2 sig_type=std_logic lab=VREFG}
C {madvlsi/gnd.sym} -560 120 0 0 {name=l1 lab=GND}
C {lab_pin.sym} -560 -20 0 0 {name=p3 sig_type=std_logic lab=D}
C {madvlsi/pmos3.sym} -320 30 0 0 {name=M3
L=0.5
W=4
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
C {madvlsi/nmos3.sym} -190 30 0 1 {name=M4
L=0.5
W=2
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
C {lab_pin.sym} -250 70 1 1 {name=p4 sig_type=std_logic lab=IOUT}
C {lab_pin.sym} -150 30 3 0 {name=p5 sig_type=std_logic lab=B}
C {madvlsi/pmos3.sym} -110 30 0 0 {name=M5
L=0.5
W=4
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
C {madvlsi/nmos3.sym} 20 30 0 1 {name=M6
L=0.5
W=2
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
C {lab_pin.sym} -150 -10 1 0 {name=p6 sig_type=std_logic lab=D}
C {lab_pin.sym} -150 130 3 0 {name=p7 sig_type=std_logic lab=BBAR}
C {lab_pin.sym} -40 70 1 1 {name=p8 sig_type=std_logic lab=IDUMP}
C {madvlsi/vsource.sym} -430 60 0 0 {name=V1
value=0.9
}
C {lab_pin.sym} -430 30 2 1 {name=p9 sig_type=std_logic lab=IDUMP}
C {madvlsi/gnd.sym} -430 90 0 0 {name=l2 lab=GND}
C {madvlsi/nmos3.sym} -250 290 0 0 {name=M7
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
C {madvlsi/resistor.sym} -380 190 1 0 {name=EXT_REF
value=33k
m=1}
C {madvlsi/gnd.sym} -250 320 0 0 {name=l3 lab=GND}
C {lab_pin.sym} -290 260 2 1 {name=p10 sig_type=std_logic lab=VREFG}
C {madvlsi/vsource.sym} -470 260 0 0 {name=VREF
value=1}
C {madvlsi/gnd.sym} -470 290 0 0 {name=l4 lab=GND}
C {lab_pin.sym} -470 230 0 0 {name=p11 sig_type=std_logic lab=VREF}
C {lab_pin.sym} -410 190 0 0 {name=p12 sig_type=std_logic lab=VREF}
C {lab_pin.sym} -350 190 2 0 {name=p13 sig_type=std_logic lab=VREFG}
C {madvlsi/vsource.sym} -380 310 0 0 {name=VREF1
value=1}
C {madvlsi/gnd.sym} -380 340 0 0 {name=l5 lab=GND}
C {lab_pin.sym} -380 280 0 0 {name=p14 sig_type=std_logic lab=VCAS}
