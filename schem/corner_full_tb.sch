v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -330 -100 -330 -70 {lab=GND}
N -280 -260 -280 -250 {lab=VDD}
N -330 -280 -330 -250 {lab=VDD}
N -330 -190 -330 -160 {lab=#net1}
N -280 -190 -280 -180 {lab=GND}
N -280 -270 -280 -260 {lab=VDD}
N -330 -270 -280 -270 {lab=VDD}
N -110 -210 -90 -210 {lab=VDD}
N -170 -190 -90 -190 {lab=GND}
N -170 -190 -170 -170 {lab=GND}
N 210 -210 230 -210 {lab=VOUT}
N -90 -170 -90 -130 {lab=#net2}
N -90 -70 -90 -50 {lab=GND}
C {code.sym} -550 -280 0 0 {name=Simulation only_toplevel=false value="

.include /home/zhixuan/projects/fyp_vco/magic/full/vco_pex.spice
.lib /usr/local/share/pdk/sky130A/libs.tech/ngspice/sky130.lib.spice ff

.tran 0.1n 2u
.save all

.control
    run
    
    meas tran t11 when VOUT=0.9 rise=2
    meas tran t21 when VOUT=0.9 rise=3
    
    * Calculate period and frequency from 2nd period onwards
    let period1 = t21 - t11

    let freq1 = 1 / period1

    meas tran idd1 avg i(vdd) from=t11 to=2u
    let idd1 = abs(idd1)

    plot VOUT
    
    print period1
    print freq1
    print idd1

    * echo \\"VOUT2 v(x2.comp_p_0\\/VIN_N)\\" > /home/zhixuan/projects/fyp_vco/schem/full_out1.txt
    * print col VOUT2 v(x2.comp_p_0\\/VIN_N) >> /home/zhixuan/projects/fyp_vco/schem/full_out1.txt
.endc

.end
"}
C {vsource.sym} -330 -130 0 0 {name=vdd value=1.8 savecurrent=false}
C {gnd.sym} -330 -70 0 0 {name=l3 lab=GND}
C {lab_pin.sym} -330 -280 0 0 {name=p9 sig_type=std_logic lab=VDD}
C {capa.sym} -280 -220 0 0 {name=C2
m=1
value=10n
footprint=1206
device="ceramic capacitor"}
C {res.sym} -330 -220 0 0 {name=R8
value=5
footprint=1206
device=resistor
m=1}
C {gnd.sym} -280 -180 0 0 {name=l7 lab=GND}
C {lab_pin.sym} -110 -210 0 0 {name=p3 sig_type=std_logic lab=VDD}
C {gnd.sym} -170 -170 0 0 {name=l4 lab=GND}
C {vsource.sym} -90 -100 0 0 {name=vctrl value=0.85 savecurrent=false}
C {gnd.sym} -90 -50 0 0 {name=l5 lab=GND}
C {lab_pin.sym} 230 -210 0 1 {name=p4 sig_type=std_logic lab=VOUT}
C {pex_full.sym} 60 -190 0 0 {name=x2}
