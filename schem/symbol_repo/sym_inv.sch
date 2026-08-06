v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 0 -20 0 20 {lab=VOUT}
N 0 0 60 0 {lab=VOUT}
N 0 80 0 100 {lab=VSS}
N 0 50 60 50 {lab=VSS}
N 0 -100 0 -80 {lab=VDD}
N -60 -50 -40 -50 {lab=VIN}
N -60 -50 -60 50 {lab=VIN}
N -60 50 -40 50 {lab=VIN}
N -80 0 -60 0 {lab=VIN}
N 60 50 80 50 {lab=VSS}
N 80 50 80 90 {lab=VSS}
N 0 90 80 90 {lab=VSS}
N 0 -90 80 -90 {lab=VDD}
N 80 -90 80 -50 {lab=VDD}
N 0 -50 80 -50 {lab=VDD}
C {sky130_fd_pr/nfet_01v8.sym} -20 50 0 0 {name=MN_pldwn
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
C {sky130_fd_pr/pfet_01v8.sym} -20 -50 0 0 {name=MP_plup
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
C {ipin.sym} -80 0 0 0 {name=p4 lab=VIN}
C {ipin.sym} 0 -100 3 1 {name=p2 lab=VDD}
C {ipin.sym} 0 100 1 1 {name=p1 lab=VSS}
C {iopin.sym} 60 0 0 0 {name=p3 lab=VOUT}
