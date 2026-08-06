v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -80 180 -80 200 {lab=VSS}
N -200 180 -200 200 {lab=VSS}
N 200 180 200 200 {lab=VSS}
N 80 180 80 200 {lab=VSS}
N -200 10 -160 10 {lab=VDD}
N 160 10 200 10 {lab=VDD}
N 0 -140 0 -120 {lab=VDD}
N -200 40 -200 120 {lab=#net1}
N 200 40 200 120 {lab=#net2}
N -340 110 -340 200 {lab=VSS}
N 340 110 340 200 {lab=VSS}
N -300 80 -200 80 {lab=#net1}
N 200 80 300 80 {lab=#net2}
N -380 -160 -340 -160 {lab=VDD}
N 340 -160 380 -160 {lab=VDD}
N -300 -160 300 -160 {lab=#net3}
N 340 -130 340 50 {lab=VOUT}
N -340 -220 -340 -190 {lab=VDD}
N 340 -220 340 -190 {lab=VDD}
N 0 -90 40 -90 {lab=VDD}
N -80 -90 -40 -90 {lab=BIAS_P}
N -260 10 -240 10 {lab=VIN_N}
N 240 10 260 10 {lab=VIN_P}
N -340 200 340 200 {lab=VSS}
N 0 200 0 220 {lab=VSS}
N 340 -40 360 -40 {lab=VOUT}
N -160 150 -120 150 {lab=#net1}
N -140 80 -140 150 {lab=#net1}
N -200 80 -140 80 {lab=#net1}
N -140 80 -100 80 {lab=#net1}
N -100 80 80 120 {lab=#net1}
N 120 150 160 150 {lab=#net2}
N 140 80 140 150 {lab=#net2}
N 140 80 200 80 {lab=#net2}
N 100 80 140 80 {lab=#net2}
N -80 120 100 80 {lab=#net2}
N -200 -40 -200 -20 {lab=#net4}
N -200 -40 200 -40 {lab=#net4}
N 200 -40 200 -20 {lab=#net4}
N 0 -60 0 -40 {lab=#net4}
N -540 -220 -520 -220 {lab=VDD}
N -540 -180 -520 -180 {lab=VSS}
N -380 80 -340 80 {lab=VSS}
N 340 80 380 80 {lab=VSS}
N 200 150 240 150 {lab=VSS}
N -240 150 -200 150 {lab=VSS}
N 40 150 80 150 {lab=VSS}
N -80 150 -40 150 {lab=VSS}
N -380 -60 -340 -60 {lab=VDD}
N -340 -130 -340 -90 {lab=#net3}
N -340 -110 -260 -110 {lab=#net3}
N -260 -160 -260 -110 {lab=#net3}
N -340 -30 -340 50 {lab=#net5}
N -300 -60 -290 -60 {lab=#net5}
N -290 -60 -290 -20 {lab=#net5}
N -340 -20 -290 -20 {lab=#net5}
C {sky130_fd_pr/nfet_01v8.sym} -100 150 0 0 {name=MN_cs_l
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
C {sky130_fd_pr/pfet_01v8.sym} -20 -90 0 0 {name=MP_tail
W=2
L=0.75
nf=5
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
C {sky130_fd_pr/pfet_01v8.sym} -220 10 0 0 {name=MP_vinn
W=2.5
L=0.5
nf=2
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
C {sky130_fd_pr/pfet_01v8.sym} 220 10 0 1 {name=MP_vinp
W=2.5
L=0.5
nf=2
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
C {sky130_fd_pr/nfet_01v8.sym} -180 150 0 1 {name=MN_diode_l
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
C {sky130_fd_pr/nfet_01v8.sym} 180 150 0 0 {name=MN_diode_r
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
C {sky130_fd_pr/nfet_01v8.sym} 100 150 0 1 {name=MN_cs_r
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
C {lab_pin.sym} 160 10 0 0 {name=p45 sig_type=std_logic lab=VDD}
C {lab_pin.sym} -160 10 0 1 {name=p46 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 40 -90 0 1 {name=p47 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 0 -140 0 0 {name=p52 sig_type=std_logic lab=VDD}
C {sky130_fd_pr/nfet_01v8.sym} -320 80 0 1 {name=MN_latch_l
W=0.5
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
C {sky130_fd_pr/nfet_01v8.sym} 320 80 0 0 {name=MN_latch_r
W=0.5
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
C {sky130_fd_pr/pfet_01v8.sym} -320 -160 0 1 {name=MP_diode_l
W=0.5
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
C {lab_pin.sym} -380 -160 0 0 {name=p53 sig_type=std_logic lab=VDD}
C {sky130_fd_pr/pfet_01v8.sym} 320 -160 0 0 {name=MP_latch_r
W=0.5
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
C {lab_pin.sym} 380 -160 0 1 {name=p56 sig_type=std_logic lab=VDD}
C {lab_pin.sym} -340 -220 0 0 {name=p57 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 340 -220 0 0 {name=p58 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 0 220 0 0 {name=p1 sig_type=std_logic lab=VSS}
C {ipin.sym} -540 -220 0 0 {name=p2 lab=VDD}
C {ipin.sym} -540 -180 0 0 {name=p8 lab=VSS}
C {lab_pin.sym} -520 -220 0 1 {name=p15 sig_type=std_logic lab=VDD}
C {lab_pin.sym} -520 -180 0 1 {name=p16 sig_type=std_logic lab=VSS}
C {ipin.sym} -80 -90 0 0 {name=p3 lab=BIAS_P}
C {ipin.sym} -260 10 0 0 {name=p4 lab=VIN_N}
C {ipin.sym} 260 10 0 1 {name=p5 lab=VIN_P}
C {iopin.sym} 360 -40 0 0 {name=p6 lab=VOUT}
C {lab_pin.sym} -380 80 0 0 {name=p7 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 380 80 0 1 {name=p9 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 240 150 0 1 {name=p10 sig_type=std_logic lab=VSS}
C {lab_pin.sym} -240 150 0 0 {name=p11 sig_type=std_logic lab=VSS}
C {lab_pin.sym} -40 150 0 1 {name=p12 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 40 150 0 0 {name=p13 sig_type=std_logic lab=VSS}
C {sky130_fd_pr/pfet_01v8.sym} -320 -60 0 1 {name=MP_lim
W=0.5
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
C {lab_pin.sym} -380 -60 0 0 {name=p14 sig_type=std_logic lab=VDD}
