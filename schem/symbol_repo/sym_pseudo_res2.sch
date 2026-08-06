v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -0 -20 -0 20 {lab=#net1}
N -0 -120 0 -80 {lab=HIGH}
N -0 80 0 120 {lab=LOW}
N 0 50 80 50 {lab=VDD}
N -60 -50 -40 -50 {lab=#net1}
N -60 50 -40 50 {lab=#net1}
N 0 -50 80 -50 {lab=VDD}
N -60 -50 -60 -0 {lab=#net1}
N -60 0 -0 0 {lab=#net1}
N -60 -0 -60 50 {lab=#net1}
N 80 -50 80 50 {lab=VDD}
N 80 -0 100 -0 {lab=VDD}
C {sky130_fd_pr/pfet_01v8.sym} -20 -50 0 0 {name=MP_r1
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
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} -20 50 0 0 {name=MP_r2
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
model=pfet_01v8
spiceprefix=X
}
C {iopin.sym} 0 120 0 1 {name=p25 lab=LOW}
C {ipin.sym} 0 -120 0 0 {name=p15 lab=HIGH}
C {ipin.sym} 100 0 0 1 {name=p1 lab=VDD}
C {ipin.sym} 100 100 0 1 {name=p2 lab=VSS}
