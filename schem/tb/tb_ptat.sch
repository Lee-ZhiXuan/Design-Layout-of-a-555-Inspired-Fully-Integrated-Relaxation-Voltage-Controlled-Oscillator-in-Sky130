v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -210 -340 -210 -320 {lab=VDD}
N -210 -260 -210 -240 {lab=GND}
N 100 -200 100 -180 {lab=GND}
N 100 -300 100 -280 {lab=VDD}
N 160 -100 160 -60 {lab=VDD}
N 160 -30 200 -30 {lab=VDD}
N 160 0 160 40 {lab=#net1}
N 160 100 160 120 {lab=GND}
N 100 -30 120 -30 {lab=bias_p1}
N 200 -260 220 -260 {lab=bias_p1}
N 200 -220 220 -220 {lab=bias_n1}
N 340 -20 340 40 {lab=#net2}
N 340 70 400 70 {lab=GND}
N 340 -100 340 -80 {lab=VDD}
N 280 70 300 70 {lab=bias_n1}
N 340 100 340 120 {lab=GND}
N -390 -30 -380 -30 {
lab=VDD}
N -380 -80 -380 -60 {
lab=VDD}
N -340 -30 -310 -30 {
lab=#net3}
N -390 270 -380 270 {
lab=GND}
N -380 300 -380 340 {
lab=GND}
N -310 220 -310 270 {
lab=#net4}
N -380 220 -310 220 {
lab=#net4}
N -380 20 -310 20 {
lab=#net3}
N -310 -30 -310 20 {
lab=#net3}
N -380 0 -380 40 {
lab=#net3}
N -380 200 -380 240 {
lab=#net4}
N -460 320 -380 320 {lab=GND}
N -460 270 -390 270 {lab=GND}
N -340 270 -310 270 {lab=#net4}
N -380 -70 -170 -70 {lab=VDD}
N -170 -70 -170 -10 {lab=VDD}
N -310 20 -210 20 {lab=#net3}
N -170 50 -170 90 {lab=#net5}
N -170 150 -170 320 {lab=GND}
N -380 320 -170 320 {lab=GND}
N -170 20 -130 20 {lab=VDD}
N -380 40 -380 130 {lab=#net3}
N -380 190 -380 200 {lab=#net4}
N -460 160 -400 160 {lab=GND}
N -460 160 -460 320 {lab=GND}
N 580 -100 580 -60 {lab=VDD}
N 580 -30 620 -30 {lab=VDD}
N 580 0 580 40 {lab=#net6}
N 580 100 580 120 {lab=GND}
N 520 -30 540 -30 {lab=bias_p2}
N 760 -20 760 40 {lab=#net7}
N 760 70 820 70 {lab=GND}
N 760 -100 760 -80 {lab=VDD}
N 700 70 720 70 {lab=bias_n2}
N 760 100 760 120 {lab=GND}
N 540 -210 540 -190 {lab=GND}
N 540 -310 540 -290 {lab=VDD}
N 640 -270 660 -270 {lab=bias_p2}
N 640 -230 660 -230 {lab=bias_n2}
C {lab_pin.sym} -210 -340 0 0 {name=p26 sig_type=std_logic lab=VDD}
C {vsource.sym} -210 -290 0 0 {name=V1 value="PWL(0 0 1u 1.8)" savecurrent=false}
C {gnd.sym} -210 -240 0 0 {name=l8 lab=GND}
C {lab_pin.sym} 100 -300 0 0 {name=p1 sig_type=std_logic lab=VDD}
C {gnd.sym} 100 -180 0 0 {name=l1 lab=GND}
C {sky130_fd_pr/pfet_01v8.sym} 140 -30 0 0 {name=M42
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
C {lab_pin.sym} 160 -100 0 0 {name=p50 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 200 -30 0 1 {name=p51 sig_type=std_logic lab=VDD}
C {vsource.sym} 160 70 0 0 {name=vip1 value=0 savecurrent=false}
C {gnd.sym} 160 120 0 0 {name=l2 lab=GND}
C {lab_pin.sym} 100 -30 0 0 {name=p2 sig_type=std_logic lab=bias_p1}
C {lab_pin.sym} 220 -260 0 1 {name=p3 sig_type=std_logic lab=bias_p1}
C {lab_pin.sym} 220 -220 0 1 {name=p4 sig_type=std_logic lab=bias_n1}
C {sky130_fd_pr/nfet_01v8.sym} 320 70 0 0 {name=M41
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
C {vsource.sym} 340 -50 0 0 {name=vin1 value=0 savecurrent=false}
C {gnd.sym} 400 70 3 0 {name=l28 lab=GND}
C {lab_pin.sym} 340 -100 0 0 {name=p5 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 280 70 0 0 {name=p6 sig_type=std_logic lab=bias_n1}
C {gnd.sym} 340 120 0 0 {name=l3 lab=GND}
C {sky130_fd_pr/pfet_01v8.sym} -190 20 0 0 {name=M6
W=5
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
C {vsource.sym} -170 120 0 0 {name=vref value=0 savecurrent=false}
C {devices/lab_pin.sym} -390 -30 2 1 {name=p16 sig_type=power lab=VDD}
C {devices/lab_pin.sym} -380 -80 3 1 {name=p17 sig_type=power lab=VDD}
C {sky130_fd_pr/nfet_01v8_lvt.sym} -360 270 0 1 {name=Mn_bias2
L=0.5
W=2
nf=2
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8_lvt.sym} -360 -30 0 1 {name=Mp_bias1
L=0.5
W=2
nf=5
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8_lvt
spiceprefix=X
}
C {devices/gnd.sym} -380 340 0 0 {name=l11 lab=GND}
C {lab_pin.sym} -130 20 0 1 {name=p7 sig_type=std_logic lab=VDD}
C {sky130_fd_pr/res_xhigh_po.sym} -380 160 0 0 {name=R5
W=1
L=5
model=res_xhigh_po
spiceprefix=X
mult=1}
C {sky130_fd_pr/pfet_01v8.sym} 560 -30 0 0 {name=M1
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
C {lab_pin.sym} 580 -100 0 0 {name=p9 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 620 -30 0 1 {name=p10 sig_type=std_logic lab=VDD}
C {vsource.sym} 580 70 0 0 {name=vip2 value=0 savecurrent=false}
C {gnd.sym} 580 120 0 0 {name=l5 lab=GND}
C {lab_pin.sym} 520 -30 0 0 {name=p11 sig_type=std_logic lab=bias_p2}
C {sky130_fd_pr/nfet_01v8.sym} 740 70 0 0 {name=M2
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
C {vsource.sym} 760 -50 0 0 {name=vin2 value=0 savecurrent=false}
C {gnd.sym} 820 70 3 0 {name=l6 lab=GND}
C {lab_pin.sym} 760 -100 0 0 {name=p14 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 700 70 0 0 {name=p15 sig_type=std_logic lab=bias_n2}
C {gnd.sym} 760 120 0 0 {name=l7 lab=GND}
C {lab_pin.sym} 540 -310 0 0 {name=p8 sig_type=std_logic lab=VDD}
C {gnd.sym} 540 -190 0 0 {name=l4 lab=GND}
C {lab_pin.sym} 660 -270 0 1 {name=p12 sig_type=std_logic lab=bias_p2}
C {lab_pin.sym} 660 -230 0 1 {name=p13 sig_type=std_logic lab=bias_n2}
C {/home/zhixuan/projects/fyp_vco/schem/symbol_repo/sym_ptat.sym} 120 -240 0 0 {name=x1}
C {/home/zhixuan/projects/fyp_vco/schem/symbol_repo/pex_ptat.sym} 560 -250 0 0 {name=x2}
C {code.sym} -440 -300 0 0 {name=Simulation1 only_toplevel=false value="
.include /home/zhixuan/projects/fyp_vco/magic/ip/ptat/ptat.spice
.lib /usr/local/share/pdk/sky130A/libs.tech/ngspice/sky130.lib.spice tt
.save all
.control
  set noaskquit
  let n = 34
  let tvec = vector(n)
  let ivec1p = vector(n)
  let ivec1n = vector(n)
  let ivec2p = vector(n)
  let ivec2n = vector(n)
  let refvec = vector(n)
  let idx = 0
  foreach t -40 -35 -30 -25 -20 -15 -10 -5 0 5 10 15 20 25 30 35 40 45 50 55 60 65 70 75 80 85 90 95 100 105 110 115 120 125
    set temp = $t
    tran 10n 10u
    let tvec[idx] = $t
    let ivec1p[idx] = i(vip1)[length(i(vip1))-1]
    let ivec1n[idx] = i(vin1)[length(i(vin1))-1]
    let ivec2p[idx] = i(vip2)[length(i(vip2))-1]
    let ivec2n[idx] = i(vin2)[length(i(vin2))-1]
    let refvec[idx] = i(vref)[length(i(vref))-1]
    let idx = idx + 1
  end
  plot ivec1p ivec1n refvec ivec2p ivec2n vs tvec
  
  echo \\"temp ivec1p ivec1n refvec\\" > /home/zhixuan/projects/fyp_vco/schem/tb/ptat_tb_out1.txt
  print col tvec ivec1p ivec1n refvec >> /home/zhixuan/projects/fyp_vco/schem/tb/ptat_tb_out1.txt
  echo \\"temp ivec2p ivec2n refvec\\" > /home/zhixuan/projects/fyp_vco/schem/tb/ptat_tb_out2.txt
  print col tvec ivec2p ivec2n refvec >> /home/zhixuan/projects/fyp_vco/schem/tb/ptat_tb_out2.txt
.endc
.end
"}
