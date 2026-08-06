v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -180 -100 -180 -80 {lab=#net1}
N -180 -130 -140 -130 {lab=VDD}
N -180 -180 -180 -160 {lab=VDD}
N -180 -20 -180 20 {lab=POS}
N -260 20 -100 20 {lab=POS}
N -100 20 -100 40 {lab=POS}
N -260 20 -260 40 {lab=POS}
N -260 100 -260 120 {lab=VSS}
N -260 120 -100 120 {lab=VSS}
N -100 100 -100 120 {lab=VSS}
N -260 70 -100 70 {lab=VSS}
N -180 70 -180 120 {lab=VSS}
N -180 120 -180 140 {lab=VSS}
N -320 70 -300 70 {lab=S}
N -60 70 -40 70 {lab=NEG}
N -240 -130 -220 -130 {lab=S}
N 180 -100 180 -80 {lab=#net2}
N 180 -50 220 -50 {lab=VDD}
N 180 -180 180 -160 {lab=VDD}
N 180 -20 180 20 {lab=NEG}
N 100 20 260 20 {lab=NEG}
N 260 20 260 40 {lab=NEG}
N 100 20 100 40 {lab=NEG}
N 100 100 100 120 {lab=VSS}
N 100 120 260 120 {lab=VSS}
N 260 100 260 120 {lab=VSS}
N 100 70 260 70 {lab=VSS}
N 180 70 180 120 {lab=VSS}
N 180 120 180 140 {lab=VSS}
N 40 70 60 70 {lab=POS}
N 300 70 320 70 {lab=R}
N 120 -50 140 -50 {lab=POS}
N -320 -130 -240 -130 {lab=S}
N -320 -130 -320 70 {lab=S}
N -140 -50 -40 -50 {lab=NEG}
N -40 -50 -40 70 {lab=NEG}
N -220 -50 -180 -50 {lab=VDD}
N -340 0 -320 0 {lab=S}
N 140 -130 180 -130 {lab=VDD}
N 220 -130 240 -130 {lab=R}
N 320 -130 320 70 {lab=R}
N 240 -130 320 -130 {lab=R}
N 40 -50 40 70 {lab=POS}
N 40 -50 120 -50 {lab=POS}
N 320 0 340 0 {lab=R}
N -180 -10 40 -10 {lab=POS}
N -40 10 180 10 {lab=NEG}
N 20 10 20 120 {lab=NEG}
N -20 -10 -20 120 {lab=POS}
N -400 -180 -380 -180 {lab=VDD}
N -400 -140 -380 -140 {lab=VSS}
C {sky130_fd_pr/nfet_01v8.sym} -80 70 0 1 {name=MN_neg
W=1
L=0.15
nf=1 
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} -200 -130 0 0 {name=MP_s
W=2
L=0.15
nf=1
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} -160 -50 0 1 {name=MP_neg
W=2
L=0.15
nf=1
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} -280 70 0 0 {name=MN_s
W=1
L=0.15
nf=1 
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {lab_pin.sym} -140 -130 0 1 {name=p3 sig_type=std_logic lab=VDD}
C {lab_pin.sym} -180 -180 0 0 {name=p2 sig_type=std_logic lab=VDD}
C {sky130_fd_pr/nfet_01v8.sym} 280 70 0 1 {name=MN_r
W=1
L=0.15
nf=1 
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 200 -130 0 1 {name=MP_r
W=2
L=0.15
nf=1
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 160 -50 0 0 {name=MP_pos
W=2
L=0.15
nf=1
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 80 70 0 0 {name=MN_pos
W=1
L=0.15
nf=1 
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {lab_pin.sym} 220 -50 0 1 {name=p5 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 180 -180 0 0 {name=p6 sig_type=std_logic lab=VDD}
C {lab_pin.sym} -220 -50 0 0 {name=p7 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 140 -130 0 0 {name=p4 sig_type=std_logic lab=VDD}
C {lab_pin.sym} -180 140 0 0 {name=p11 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 180 140 0 0 {name=p12 sig_type=std_logic lab=VSS}
C {ipin.sym} -340 0 0 0 {name=p13 lab=S}
C {ipin.sym} -400 -180 0 0 {name=p1 lab=VDD}
C {ipin.sym} 340 0 0 1 {name=p14 lab=R}
C {ipin.sym} -400 -140 0 0 {name=p8 lab=VSS}
C {lab_pin.sym} -380 -180 0 1 {name=p15 sig_type=std_logic lab=VDD}
C {lab_pin.sym} -380 -140 0 1 {name=p16 sig_type=std_logic lab=VSS}
C {iopin.sym} -20 120 1 0 {name=p10 lab=POS}
C {iopin.sym} 20 120 1 0 {name=p18 lab=NEG}
