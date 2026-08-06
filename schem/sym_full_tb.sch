v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -500 120 -500 150 {lab=GND}
N -450 -40 -450 -30 {lab=VDD}
N -500 -60 -500 -30 {lab=VDD}
N -500 30 -500 60 {lab=#net1}
N -450 30 -450 40 {lab=GND}
N -450 -50 -450 -40 {lab=VDD}
N -500 -50 -450 -50 {lab=VDD}
N -160 -100 -140 -100 {lab=VDD}
N -220 -80 -140 -80 {lab=GND}
N -220 -80 -220 -60 {lab=GND}
N 160 -100 180 -100 {lab=VOUT}
N -140 -60 -140 -20 {lab=#net2}
N -140 40 -140 60 {lab=GND}
N -160 120 -140 120 {lab=VDD2}
N -220 140 -140 140 {lab=GND}
N -220 140 -220 160 {lab=GND}
N 160 120 180 120 {lab=VOUT2}
N -140 160 -140 200 {lab=#net3}
N -140 260 -140 280 {lab=GND}
N -500 400 -500 430 {lab=GND}
N -450 240 -450 250 {lab=VDD2}
N -500 220 -500 250 {lab=VDD2}
N -500 310 -500 340 {lab=#net4}
N -450 310 -450 320 {lab=GND}
N -450 230 -450 240 {lab=VDD2}
N -500 230 -450 230 {lab=VDD2}
C {code.sym} -550 -280 0 0 {name=Simulation only_toplevel=false value="

.include /home/zhixuan/projects/fyp_vco/magic/full/vco_pex.spice
.lib /usr/local/share/pdk/sky130A/libs.tech/ngspice/sky130.lib.spice tt

.tran 0.1n 2u
.save all

.control
    run
    
    meas tran t11 when VOUT=0.9 rise=2
    meas tran t21 when VOUT=0.9 rise=3

    meas tran t12 when VOUT2=0.9 rise=2
    meas tran t22 when VOUT2=0.9 rise=3
    
    * Calculate period and frequency from 2nd period onwards
    let period1 = t21 - t11
    let period2 = t22 - t12

    let freq1 = 1 / period1
    let freq2 = 1 / period2
    
    print period1
    print freq1
    print period2
    print freq2

    plot VOUT2 v(x2.comp_p_0\\/VIN_N)
    plot abs(i(vdd2))*1.8
    plot abs(i(vdd1))*1.8

    * echo \\"VOUT2 v(x2.comp_p_0\\/VIN_N)\\" > /home/zhixuan/projects/fyp_vco/schem/full_out1.txt
    * print col VOUT2 v(x2.comp_p_0\\/VIN_N) >> /home/zhixuan/projects/fyp_vco/schem/full_out1.txt
.endc

.end
"}
C {vsource.sym} -500 90 0 0 {name=vdd1 value=1.8 savecurrent=false}
C {gnd.sym} -500 150 0 0 {name=l3 lab=GND}
C {lab_pin.sym} -500 -60 0 0 {name=p9 sig_type=std_logic lab=VDD}
C {capa.sym} -450 0 0 0 {name=C2
m=1
value=10n
footprint=1206
device="ceramic capacitor"}
C {res.sym} -500 0 0 0 {name=R8
value=5
footprint=1206
device=resistor
m=1}
C {gnd.sym} -450 40 0 0 {name=l7 lab=GND}
C {lab_pin.sym} -160 -100 0 0 {name=p1 sig_type=std_logic lab=VDD}
C {gnd.sym} -220 -60 0 0 {name=l1 lab=GND}
C {vsource.sym} -140 10 0 0 {name=vctrl value=0.6 savecurrent=false}
C {gnd.sym} -140 60 0 0 {name=l2 lab=GND}
C {lab_pin.sym} 180 -100 0 1 {name=p2 sig_type=std_logic lab=VOUT}
C {lab_pin.sym} -160 120 0 0 {name=p3 sig_type=std_logic lab=VDD2}
C {gnd.sym} -220 160 0 0 {name=l4 lab=GND}
C {vsource.sym} -140 230 0 0 {name=vctrl1 value=0.6 savecurrent=false}
C {gnd.sym} -140 280 0 0 {name=l5 lab=GND}
C {lab_pin.sym} 180 120 0 1 {name=p4 sig_type=std_logic lab=VOUT2}
C {vsource.sym} -500 370 0 0 {name=vdd2 value=1.8 savecurrent=false}
C {gnd.sym} -500 430 0 0 {name=l6 lab=GND}
C {lab_pin.sym} -500 220 0 0 {name=p5 sig_type=std_logic lab=VDD2}
C {capa.sym} -450 280 0 0 {name=C1
m=1
value=10n
footprint=1206
device="ceramic capacitor"}
C {res.sym} -500 280 0 0 {name=R1
value=5
footprint=1206
device=resistor
m=1}
C {gnd.sym} -450 320 0 0 {name=l8 lab=GND}
C {/home/zhixuan/projects/fyp_vco/schem/full_sym.sym} 10 -80 0 0 {name=x1}
C {/home/zhixuan/projects/fyp_vco/schem/pex_full.sym} 10 140 0 0 {name=x2}
