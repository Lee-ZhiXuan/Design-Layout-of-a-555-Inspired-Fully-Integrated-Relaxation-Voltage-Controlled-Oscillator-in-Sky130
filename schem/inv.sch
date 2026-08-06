v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 0 -50 40 -50 {lab=VDD}
N -0 -20 -0 20 {lab=vout}
N 0 0 60 0 {lab=vout}
N 0 80 0 100 {lab=GND}
N -0 50 60 50 {lab=GND}
N -0 -100 0 -80 {lab=VDD}
N -60 -50 -40 -50 {lab=vin}
N -60 -50 -60 50 {lab=vin}
N -60 50 -40 50 {lab=vin}
N -80 -0 -60 -0 {lab=vin}
N -540 -120 -540 -100 {lab=VDD}
N -540 -40 -540 -20 {lab=GND}
N -540 40 -540 60 {lab=vin}
N -540 120 -540 140 {lab=GND}
C {sky130_fd_pr/nfet_01v8.sym} -20 50 0 0 {name=M1
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
C {sky130_fd_pr/pfet_01v8.sym} -20 -50 0 0 {name=M3
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
C {gnd.sym} 0 100 0 0 {name=l1 lab=GND}
C {lab_pin.sym} 40 -50 0 1 {name=p7 sig_type=std_logic lab=VDD}
C {gnd.sym} 60 50 3 0 {name=l2 lab=GND}
C {lab_pin.sym} 0 -100 0 0 {name=p1 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 60 0 0 1 {name=p2 sig_type=std_logic lab=vout}
C {lab_pin.sym} -80 0 0 0 {name=p3 sig_type=std_logic lab=vin}
C {lab_pin.sym} -540 -120 0 0 {name=p24 sig_type=std_logic lab=VDD}
C {vsource.sym} -540 -70 0 0 {name=V1 value=1.8 savecurrent=false}
C {gnd.sym} -540 -20 0 0 {name=l3 lab=GND}
C {code.sym} -440 -120 0 0 {name=Simulation only_toplevel=false value="
.lib /usr/local/share/pdk/sky130A/libs.tech/ngspice/sky130.lib.spice tt

.tran 10n 45u
.save all

.control
    run
    plot vin vout
.endc

.end
"}
C {lab_pin.sym} -540 40 0 0 {name=p27 sig_type=std_logic lab=vin}
C {vsource.sym} -540 90 0 0 {name=V3 value="PWL(0u 0 22u 0 22.001u 1.8 32u 1.8 32.001u 0 33u 0 33.001u 1.8 43u 1.8 43.001u 0 44u 0)" savecurrent=false}
C {gnd.sym} -540 140 0 0 {name=l5 lab=GND}
