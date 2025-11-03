v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -900 130 -800 130 {lab=Iout}
N -380 130 40 130 {lab=Iout}
N -800 130 -380 130 {lab=Iout}
N -590 170 -170 170 {lab=Idump}
N -900 170 -590 170 {lab=Idump}
N 40 130 460 130 {lab=Iout}
N -250 -250 -200 -250 {lab=#net1}
N -280 -280 -230 -280 {lab=Vref}
N -440 -280 -390 -280 {lab=Vref}
N -600 -280 -550 -280 {lab=Vref}
N -680 -250 -630 -250 {lab=Ibias}
N -570 -250 -520 -250 {lab=#net2}
N -520 -250 -470 -250 {lab=#net2}
N -410 -250 -360 -250 {lab=#net3}
N -360 -250 -310 -250 {lab=#net3}
N 230 -250 280 -250 {lab=#net4}
N 200 -280 250 -280 {lab=Vref}
N 40 -280 90 -280 {lab=Vref}
N -90 -250 -40 -250 {lab=#net5}
N -40 -250 10 -250 {lab=#net5}
N 70 -250 120 -250 {lab=#net6}
N 120 -250 170 -250 {lab=#net6}
N -200 -250 -150 -250 {lab=#net1}
N -120 -280 -70 -280 {lab=Vref}
N -710 -280 -600 -280 {lab=Vref}
N -550 -280 -440 -280 {lab=Vref}
N -390 -280 -280 -280 {lab=Vref}
N -230 -280 -120 -280 {lab=Vref}
N -70 -280 40 -280 {lab=Vref}
N 90 -280 200 -280 {lab=Vref}
N -870 -40 -740 -40 {lab=vb0}
N -660 -40 -530 -40 {lab=vb1}
N -450 -40 -320 -40 {lab=vb2}
N -240 -40 -110 -40 {lab=vb3}
N -30 -40 100 -40 {lab=vb4}
N 180 -40 310 -40 {lab=vb5}
N 30 170 240 170 {lab=Idump}
N -170 170 30 170 {lab=Idump}
N -870 20 -870 170 {lab=Idump}
N -740 20 -740 130 {lab=Iout}
N 390 -40 520 -40 {lab=vb6}
N 390 20 390 170 {lab=Idump}
N 240 170 390 170 {lab=Idump}
N 520 20 520 130 {lab=Iout}
N 460 130 520 130 {lab=Iout}
N -660 20 -660 130 {lab=Iout}
N -530 20 -530 170 {lab=Idump}
N -450 20 -450 170 {lab=Idump}
N -320 20 -320 130 {lab=Iout}
N -240 20 -240 130 {lab=Iout}
N -110 20 -110 170 {lab=Idump}
N -30 20 -30 170 {lab=Idump}
N 100 20 100 130 {lab=Iout}
N 180 20 180 130 {lab=Iout}
N 310 20 310 170 {lab=Idump}
C {lab_pin.sym} -900 130 2 1 {name=p1 sig_type=std_logic lab=Iout}
C {lab_pin.sym} -690 -10 1 0 {name=p4 sig_type=std_logic lab=b1}
C {lab_pin.sym} -900 170 2 1 {name=p3 sig_type=std_logic lab=Idump}
C {lab_pin.sym} 280 -310 1 0 {name=p34 sig_type=std_logic lab=vb6}
C {lab_pin.sym} 120 -310 1 0 {name=p35 sig_type=std_logic lab=vb5}
C {lab_pin.sym} -40 -310 1 0 {name=p36 sig_type=std_logic lab=vb4}
C {lab_pin.sym} -200 -310 1 0 {name=p37 sig_type=std_logic lab=vb3}
C {lab_pin.sym} -360 -310 1 0 {name=p38 sig_type=std_logic lab=vb2}
C {lab_pin.sym} -520 -310 1 0 {name=p39 sig_type=std_logic lab=vb1}
C {lab_pin.sym} -680 -310 1 0 {name=p40 sig_type=std_logic lab=vb0}
C {lab_pin.sym} -900 -10 1 1 {name=p5 sig_type=std_logic lab=bbar0}
C {lab_pin.sym} -500 -10 1 1 {name=p6 sig_type=std_logic lab=bbar1}
C {lab_pin.sym} -480 -10 1 1 {name=p7 sig_type=std_logic lab=bbar2}
C {lab_pin.sym} -80 -10 1 1 {name=p16 sig_type=std_logic lab=bbar3}
C {lab_pin.sym} -60 -10 1 1 {name=p17 sig_type=std_logic lab=bbar4}
C {lab_pin.sym} 340 -10 1 1 {name=p19 sig_type=std_logic lab=bbar5}
C {lab_pin.sym} 360 -10 1 1 {name=p20 sig_type=std_logic lab=bbar6}
C {lab_pin.sym} -290 -10 3 0 {name=p22 sig_type=std_logic lab=b2}
C {lab_pin.sym} 130 -10 3 0 {name=p23 sig_type=std_logic lab=b4}
C {lab_pin.sym} 550 -10 3 0 {name=p25 sig_type=std_logic lab=b6}
C {lab_pin.sym} -710 -10 3 0 {name=p26 sig_type=std_logic lab=b0}
C {lab_pin.sym} -270 -10 1 0 {name=p28 sig_type=std_logic lab=b3}
C {lab_pin.sym} 150 -10 1 0 {name=p29 sig_type=std_logic lab=b5}
C {madvlsi/nmos3.sym} -680 -280 0 0 {name=M16
L=.5
W=12
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
C {madvlsi/nmos3.sym} -600 -250 1 0 {name=M17
L=0.5
W=12
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
C {madvlsi/nmos3.sym} -440 -250 1 0 {name=M18
L=0.5
W=12
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
C {madvlsi/nmos3.sym} -280 -250 1 0 {name=M19
L=0.5
W=12
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
C {madvlsi/nmos3.sym} 40 -250 1 0 {name=M23
L=0.5
W=12
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
C {madvlsi/nmos3.sym} 200 -250 1 0 {name=M24
L=0.5
W=12
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
C {madvlsi/nmos3.sym} -120 -250 1 0 {name=M25
L=0.5
W=12
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
C {madvlsi/vsource.sym} -820 -270 0 0 {name=V11
value=1.8}
C {madvlsi/gnd.sym} -820 -240 0 0 {name=l3 lab=GND}
C {lab_pin.sym} -820 -300 0 0 {name=p8 sig_type=std_logic lab=Vref}
C {lab_pin.sym} -710 -280 2 1 {name=p14 sig_type=std_logic lab=Vref}
C {madvlsi/vsource.sym} -940 240 0 0 {name=V0
value=1.8
}
C {madvlsi/gnd.sym} -940 270 0 0 {name=l7 lab=GND
value=0}
C {lab_pin.sym} -850 260 0 0 {name=p15 sig_type=std_logic lab=bbar0}
C {lab_pin.sym} -940 210 0 0 {name=p18 sig_type=std_logic lab=b0}
C {madvlsi/vsource.sym} -720 250 0 0 {name=V1
value=1.8

}
C {madvlsi/gnd.sym} -720 280 0 0 {name=l9 lab=GND
value=0}
C {lab_pin.sym} -720 220 0 0 {name=p24 sig_type=std_logic lab=b1}
C {madvlsi/vsource.sym} -490 250 0 0 {name=V2
value=1.8
}
C {madvlsi/gnd.sym} -490 280 0 0 {name=l11 lab=GND
value=0}
C {lab_pin.sym} -490 220 0 0 {name=p30 sig_type=std_logic lab=b2}
C {madvlsi/vsource.sym} -280 250 0 0 {name=V3
value=1.8
}
C {madvlsi/gnd.sym} -280 280 0 0 {name=l13 lab=GND
value=0}
C {lab_pin.sym} -280 220 0 0 {name=p32 sig_type=std_logic lab=b3}
C {madvlsi/vsource.sym} -70 250 0 0 {name=V4
value=1.8
}
C {madvlsi/gnd.sym} -70 280 0 0 {name=l15 lab=GND
value=0}
C {lab_pin.sym} -70 220 0 0 {name=p41 sig_type=std_logic lab=b4}
C {madvlsi/vsource.sym} 150 250 0 0 {name=V5
value=1.8
}
C {madvlsi/gnd.sym} 150 280 0 0 {name=l17 lab=GND
value=0}
C {lab_pin.sym} 150 220 0 0 {name=p43 sig_type=std_logic lab=b5}
C {madvlsi/vsource.sym} 380 260 0 0 {name=V6
value=1.8
}
C {madvlsi/gnd.sym} 380 290 0 0 {name=l19 lab=GND
value=0}
C {lab_pin.sym} -4940 -150 0 0 {name=p45 sig_type=std_logic lab=b6}
C {madvlsi/nmos3.sym} -520 -280 0 0 {name=M14
L=.5
W=12
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
C {madvlsi/nmos3.sym} -360 -280 0 0 {name=M13
L=.5
W=12
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
C {madvlsi/nmos3.sym} -200 -280 0 0 {name=M15
L=.5
W=12
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
C {madvlsi/nmos3.sym} 280 -280 0 0 {name=M22
L=.5
W=12
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
C {madvlsi/nmos3.sym} 120 -280 0 0 {name=M20
L=.5
W=12
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
C {madvlsi/nmos3.sym} -40 -280 0 0 {name=M21
L=.5
W=12
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
C {madvlsi/vsource.sym} -1050 230 0 0 {name=V9
value=0}
C {madvlsi/gnd.sym} -1050 260 0 0 {name=l5 lab=GND}
C {lab_pin.sym} -1050 200 0 0 {name=p53 sig_type=std_logic lab=Idump}
C {madvlsi/vsource.sym} -1180 230 0 0 {name=Viout
value=0}
C {madvlsi/gnd.sym} -1180 260 0 0 {name=l6 lab=GND}
C {lab_pin.sym} -1180 200 0 0 {name=p54 sig_type=std_logic lab=Iout}
C {madvlsi/nmos3.sym} -740 -10 0 1 {name=M1
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
C {madvlsi/nmos3.sym} -870 -10 0 0 {name=M2
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
C {madvlsi/nmos3.sym} -530 -10 0 1 {name=M3
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
C {madvlsi/nmos3.sym} -660 -10 0 0 {name=M4
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
C {madvlsi/nmos3.sym} -320 -10 0 1 {name=M6
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
C {madvlsi/nmos3.sym} -450 -10 0 0 {name=M7
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
C {madvlsi/nmos3.sym} -110 -10 0 1 {name=M5
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
C {madvlsi/nmos3.sym} -240 -10 0 0 {name=M8
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
C {madvlsi/nmos3.sym} 100 -10 0 1 {name=M9
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
C {madvlsi/nmos3.sym} -30 -10 0 0 {name=M10
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
C {madvlsi/nmos3.sym} 310 -10 0 1 {name=M12
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
C {madvlsi/nmos3.sym} 180 -10 0 0 {name=M26
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
C {madvlsi/nmos3.sym} 520 -10 0 1 {name=M11
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
C {madvlsi/nmos3.sym} 390 -10 0 0 {name=M27
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
C {lab_pin.sym} -800 -40 1 0 {name=p46 sig_type=std_logic lab=vb0}
C {lab_pin.sym} -600 -40 1 0 {name=p47 sig_type=std_logic lab=vb1}
C {lab_pin.sym} -390 -40 1 0 {name=p48 sig_type=std_logic lab=vb2}
C {lab_pin.sym} -170 -40 1 0 {name=p49 sig_type=std_logic lab=vb3}
C {lab_pin.sym} 40 -40 1 0 {name=p50 sig_type=std_logic lab=vb4}
C {lab_pin.sym} 250 -40 1 0 {name=p51 sig_type=std_logic lab=vb5}
C {lab_pin.sym} 450 -40 1 0 {name=p52 sig_type=std_logic lab=vb6}
C {lab_pin.sym} -680 -250 0 0 {name=p55 sig_type=std_logic lab=Ibias}
C {madvlsi/vsource.sym} -920 -270 0 0 {name=V7
value=1.8}
C {madvlsi/gnd.sym} -920 -240 0 0 {name=l4 lab=GND
value=vdd}
C {lab_pin.sym} -920 -300 0 0 {name=p56 sig_type=std_logic lab=vdd
value=vdd}
C {madvlsi/vsource.sym} -1000 -270 0 0 {name=V10
value=0}
C {madvlsi/gnd.sym} -1000 -240 0 0 {name=l1 lab=GND
value=vdd}
C {lab_pin.sym} -1000 -300 0 0 {name=p2 sig_type=std_logic lab=vss}
C {lab_pin.sym} -800 220 0 1 {name=p11 sig_type=std_logic lab=vdd
value=vss}
C {/home/madvlsi/madvlsi/mp1/xschem/inv.sym} -800 260 0 1 {name=X2}
C {lab_pin.sym} -800 300 0 1 {name=p12 sig_type=std_logic lab=vss}
C {lab_pin.sym} -750 260 0 0 {name=p9 sig_type=std_logic lab=b0}
C {lab_pin.sym} -620 260 0 0 {name=p10 sig_type=std_logic lab=bbar1}
C {lab_pin.sym} -570 220 0 1 {name=p13 sig_type=std_logic lab=vdd
value=vss}
C {/home/madvlsi/madvlsi/mp1/xschem/inv.sym} -570 260 0 1 {name=X1}
C {lab_pin.sym} -570 300 0 1 {name=p21 sig_type=std_logic lab=vss}
C {lab_pin.sym} -520 260 0 0 {name=p57 sig_type=std_logic lab=b1}
C {lab_pin.sym} -400 270 0 0 {name=p58 sig_type=std_logic lab=bbar2}
C {lab_pin.sym} -350 230 0 1 {name=p59 sig_type=std_logic lab=vdd
value=vss}
C {/home/madvlsi/madvlsi/mp1/xschem/inv.sym} -350 270 0 1 {name=X3}
C {lab_pin.sym} -350 310 0 1 {name=p60 sig_type=std_logic lab=vss}
C {lab_pin.sym} -300 270 0 0 {name=p61 sig_type=std_logic lab=b2}
C {lab_pin.sym} -190 270 0 0 {name=p27 sig_type=std_logic lab=bbar3}
C {lab_pin.sym} -140 230 0 1 {name=p31 sig_type=std_logic lab=vdd
value=vss}
C {/home/madvlsi/madvlsi/mp1/xschem/inv.sym} -140 270 0 1 {name=X4}
C {lab_pin.sym} -140 310 0 1 {name=p62 sig_type=std_logic lab=vss}
C {lab_pin.sym} -90 270 0 0 {name=p63 sig_type=std_logic lab=b3}
C {lab_pin.sym} 20 260 0 0 {name=p33 sig_type=std_logic lab=bbar4}
C {lab_pin.sym} 70 220 0 1 {name=p64 sig_type=std_logic lab=vdd
value=vss}
C {/home/madvlsi/madvlsi/mp1/xschem/inv.sym} 70 260 0 1 {name=X5}
C {lab_pin.sym} 70 300 0 1 {name=p65 sig_type=std_logic lab=vss}
C {lab_pin.sym} 120 260 0 0 {name=p66 sig_type=std_logic lab=b4}
C {lab_pin.sym} 250 260 0 0 {name=p42 sig_type=std_logic lab=bbar5}
C {lab_pin.sym} 300 220 0 1 {name=p67 sig_type=std_logic lab=vdd
value=vss}
C {/home/madvlsi/madvlsi/mp1/xschem/inv.sym} 300 260 0 1 {name=X6}
C {lab_pin.sym} 300 300 0 1 {name=p68 sig_type=std_logic lab=vss}
C {lab_pin.sym} 350 260 0 0 {name=p69 sig_type=std_logic lab=b5}
C {lab_pin.sym} 490 260 0 0 {name=p44 sig_type=std_logic lab=bbar6}
C {lab_pin.sym} 540 220 0 1 {name=p70 sig_type=std_logic lab=vdd
value=vss}
C {/home/madvlsi/madvlsi/mp1/xschem/inv.sym} 540 260 0 1 {name=X7}
C {lab_pin.sym} 540 300 0 1 {name=p71 sig_type=std_logic lab=vss}
C {lab_pin.sym} 590 260 0 0 {name=p72 sig_type=std_logic lab=b6}
C {madvlsi/isource.sym} -820 -140 0 0 {name=I1
value=10u}
C {lab_pin.sym} -820 -100 0 0 {name=p73 sig_type=std_logic lab=Ibias}
C {madvlsi/tt_models.sym} -535 -495 0 0 {
name=TT_MODELS
only_toplevel=false
value=".option wnflag=1
.param MC_SWITCH=1.0
.lib /usr/local/share/pdk/sky130A/libs.tech/ngspice/sky130.lib.spice tt"
}
C {madvlsi/ammeter2.sym} -820 -110 0 0 {name=Vib}
C {madvlsi/vdd.sym} -820 -170 0 0 {name=l2 lab=VDD}
C {code.sym} -350 -490 0 0 {name="CONTROL CODE" only_toplevel=false value=".save all
.control
set wr_vecnames
set wr_singlescale

let Ibias_max = 31n
let Ibias = 30n
dowhile Ibias < Ibias_max
alter Ib $&Ibias

let mc_runs = 1
let run = 1
dowhile run <= mc_runs

  let code = 0
  while code < 128
    if floor(code / 1) eq 0
      let b0 = 0
    else
      let b0 = (floor(code / 1) % 2) * 1.8
    end
    if floor(code / 2) eq 0
      let b1 = 0
    else
      let b1 = (floor(code / 2) % 2) * 1.8
    end
    if floor(code / 4) eq 0
      let b2 = 0
    else
      let b2 = (floor(code / 4) % 2) * 1.8
    end
    if floor(code / 8) eq 0
      let b3 = 0
    else
      let b3 = (floor(code / 8) % 2) * 1.8
    end
    if floor(code / 16) eq 0
      let b4 = 0
    else
      let b4 = (floor(code / 16) % 2) * 1.8
    end
    if floor(code / 32) eq 0
      let b5 = 0
    else
      let b5 = (floor(code / 32) % 2) * 1.8
    end
    if floor(code / 64) eq 0
      let b6 = 0
    else
      let b6 = (floor(code / 64) % 2) * 1.8
    end

    alter V0 $&b0
    alter V1 $&b1
    alter V2 $&b2
    alter V3 $&b3
    alter V4 $&b4
    alter V5 $&b5
    alter V6 $&b6
    save all
    op
   
    wrdata /home/madvlsi/madvlsi/mp3/DACOutput_\\\{$&run\\\}.txt v(b0) v(b1) v(b2) v(b3) v(b4) v(b5) v(b6) i(Vib) i(Viout)
    if code eq 0
      set appendwrite
      set wr_vecnames = FALSE
    end
    let code = code + 1
  end
  reset
  set appendwrite = FALSE
  set wr_vecnames
  let run = run + 1
end

let Ibias = Ibias * 2
end
.endc"}
