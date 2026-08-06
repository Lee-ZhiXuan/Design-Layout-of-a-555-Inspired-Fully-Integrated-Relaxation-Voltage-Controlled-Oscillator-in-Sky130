v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -160 -170 -120 -170 {lab=#net1}
N 120 -170 160 -170 {lab=#net2}
N -200 -220 -200 -200 {lab=VDD}
N 200 -220 200 -200 {lab=VDD}
N 80 -220 80 -200 {lab=VDD}
N -80 -220 -80 -200 {lab=VDD}
N -200 -140 -200 -60 {lab=#net1}
N 200 -140 200 -60 {lab=#net2}
N 240 -30 260 -30 {lab=VIN_P}
N -260 -30 -240 -30 {lab=VIN_N}
N -200 0 -200 20 {lab=#net3}
N 200 0 200 20 {lab=#net3}
N -200 20 200 20 {lab=#net3}
N 200 -170 240 -170 {lab=VDD}
N 40 -170 80 -170 {lab=VDD}
N -80 -170 -40 -170 {lab=VDD}
N -240 -170 -200 -170 {lab=VDD}
N 140 -170 140 -100 {lab=#net2}
N 140 -100 200 -100 {lab=#net2}
N 100 -100 140 -100 {lab=#net2}
N -80 -140 100 -100 {lab=#net2}
N -140 -170 -140 -100 {lab=#net1}
N -200 -100 -140 -100 {lab=#net1}
N -140 -100 -100 -100 {lab=#net1}
N -100 -100 80 -140 {lab=#net1}
N 340 -220 340 -130 {lab=VDD}
N -340 -220 -340 -130 {lab=VDD}
N 340 -100 380 -100 {lab=VDD}
N -380 -100 -340 -100 {lab=VDD}
N 340 -70 340 130 {lab=VOUT}
N -300 160 300 160 {lab=#net4}
N -260 100 -260 160 {lab=#net4}
N -340 100 -260 100 {lab=#net4}
N -340 190 -340 220 {lab=VSS}
N 340 190 340 220 {lab=VSS}
N -80 70 -40 70 {lab=BIAS_N}
N 340 20 360 20 {lab=VOUT}
N -0 20 0 40 {lab=#net3}
N 340 160 380 160 {lab=VSS}
N -380 160 -340 160 {lab=VSS}
N -0 100 -0 130 {lab=VSS}
N -0 70 40 70 {lab=VSS}
N 160 -30 200 -30 {lab=VSS}
N -200 -30 -160 -30 {lab=VSS}
N -520 -220 -500 -220 {lab=VDD}
N -520 -180 -500 -180 {lab=VSS}
N 200 -100 300 -100 {lab=#net2}
N -300 -100 -200 -100 {lab=#net1}
N -340 100 -340 130 {lab=#net4}
N -380 40 -340 40 {lab=VDD}
N -340 70 -340 100 {lab=#net4}
N -300 40 -260 40 {lab=#net4}
N -260 40 -260 100 {lab=#net4}
N -340 -70 -340 10 {lab=#net5}
C {sky130_fd_pr/pfet_01v8.sym} -180 -170 0 1 {name=MP_diode_l
W=2
L=0.3
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
C {sky130_fd_pr/pfet_01v8.sym} -100 -170 0 0 {name=MP_cs_l
W=2
L=0.3
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
C {sky130_fd_pr/pfet_01v8.sym} 100 -170 0 1 {name=MP_cs_r
W=2
L=0.3
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
C {sky130_fd_pr/pfet_01v8.sym} 180 -170 0 0 {name=MP_diode_r
W=2
L=0.3
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
C {sky130_fd_pr/nfet_01v8.sym} -220 -30 0 0 {name=MN_vinn
W=2.5
L=0.5
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
C {sky130_fd_pr/nfet_01v8.sym} 220 -30 0 1 {name=MN_vinp
W=2.5
L=0.5
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
C {sky130_fd_pr/nfet_01v8.sym} -20 70 0 0 {name=MN_tail
W=2.5
L=0.75
nf=2 
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
C {lab_pin.sym} -200 -220 0 0 {name=p2 sig_type=std_logic lab=VDD}
C {lab_pin.sym} -80 -220 0 0 {name=p10 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 80 -220 0 0 {name=p11 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 200 -220 0 0 {name=p12 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 40 -170 0 0 {name=p13 sig_type=std_logic lab=VDD}
C {lab_pin.sym} -240 -170 0 0 {name=p18 sig_type=std_logic lab=VDD}
C {lab_pin.sym} -40 -170 0 1 {name=p19 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 240 -170 0 1 {name=p20 sig_type=std_logic lab=VDD}
C {sky130_fd_pr/pfet_01v8.sym} 320 -100 0 0 {name=MP_latch_r
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
C {sky130_fd_pr/pfet_01v8.sym} -320 -100 0 1 {name=MP_latch_l
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
C {lab_pin.sym} -380 -100 0 0 {name=p21 sig_type=std_logic lab=VDD}
C {lab_pin.sym} -340 -220 0 0 {name=p22 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 340 -220 0 0 {name=p23 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 380 -100 0 1 {name=p24 sig_type=std_logic lab=VDD}
C {sky130_fd_pr/nfet_01v8.sym} 320 160 0 0 {name=MN_latch_r
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
C {sky130_fd_pr/nfet_01v8.sym} -320 160 0 1 {name=MN_diode_l
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
C {lab_pin.sym} 0 130 0 0 {name=p1 sig_type=std_logic lab=VSS}
C {lab_pin.sym} -380 160 0 0 {name=p3 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 380 160 0 1 {name=p4 sig_type=std_logic lab=VSS}
C {lab_pin.sym} -340 220 0 0 {name=p5 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 340 220 0 0 {name=p6 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 40 70 0 1 {name=p7 sig_type=std_logic lab=VSS}
C {lab_pin.sym} -160 -30 0 1 {name=p8 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 160 -30 0 0 {name=p9 sig_type=std_logic lab=VSS}
C {ipin.sym} -520 -220 0 0 {name=p14 lab=VDD}
C {ipin.sym} -520 -180 0 0 {name=p15 lab=VSS}
C {lab_pin.sym} -500 -220 0 1 {name=p16 sig_type=std_logic lab=VDD}
C {lab_pin.sym} -500 -180 0 1 {name=p28 sig_type=std_logic lab=VSS}
C {ipin.sym} -260 -30 0 0 {name=p29 lab=VIN_N}
C {ipin.sym} 260 -30 0 1 {name=p27 lab=VIN_P}
C {ipin.sym} -80 70 0 0 {name=p26 lab=BIAS_N}
C {iopin.sym} 360 20 0 0 {name=p25 lab=VOUT}
C {sky130_fd_pr/pfet_01v8.sym} -320 40 0 1 {name=MP_lim
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
C {lab_pin.sym} -380 40 0 0 {name=p17 sig_type=std_logic lab=VDD}
