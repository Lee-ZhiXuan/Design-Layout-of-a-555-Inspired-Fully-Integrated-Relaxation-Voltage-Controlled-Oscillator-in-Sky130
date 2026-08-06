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
.lib /usr/local/share/pdk/sky130A/libs.tech/ngspice/sky130.lib.spice tt
.save all

.control
    tran 0.1n 10u
    plot VOUT

    * Save VDD and VOUT to file for MATLAB
    echo \\"time,vdd,vout\\" > /home/zhixuan/projects/fyp_vco/schem/noise_out.txt
    print col time v(vdd) VOUT >> /home/zhixuan/projects/fyp_vco/schem/noise_out.txt

.endc

* VDD with 50mV 1MHz sinusoidal ripple on top of 1.8V DC

.end
"}
C {vsource.sym} -330 -130 0 0 {name=vdd value="sin(1.8 50m 1Meg)" savecurrent=false}
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
C {vsource.sym} -90 -100 0 0 {name=vctrl value=0.1 savecurrent=false}
C {gnd.sym} -90 -50 0 0 {name=l5 lab=GND}
C {lab_pin.sym} 230 -210 0 1 {name=p4 sig_type=std_logic lab=VOUT}
C {pex_full.sym} 60 -190 0 0 {name=x2}
