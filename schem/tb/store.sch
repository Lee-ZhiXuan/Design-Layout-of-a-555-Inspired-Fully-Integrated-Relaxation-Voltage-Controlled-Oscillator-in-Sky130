v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
C {code.sym} -200 -130 0 0 {name=Simulation1 only_toplevel=false value="
.include /home/zhixuan/projects/fyp_vco/magic/ip/ptat/ptat.spice
.lib /usr/local/share/pdk/sky130A/libs.tech/ngspice/sky130.lib.spice tt

.op
.save all

.control
  set noaskquit

  let n = 7
  let tvec = vector(n)

  let ivec1p = vector(n)
  let ivec1n = vector(n)
  let ivec2p = vector(n)
  let ivec2n = vector(n)

  let refvec = vector(n)
  let idx = 0

  foreach t -40 -20 0 27 60 85 125
    set temp = $t
    run

    let tvec[idx] = $t

    let ivec1p[idx] = i(vip1)
    let ivec1n[idx] = i(vin1)
    let ivec2p[idx] = i(vip2)
    let ivec2n[idx] = i(vin2)

    let refvec[idx] = i(vref)

    let idx = idx + 1
  end

  plot ivec1p ivec1n refvec ivec2p ivec2n vs tvec

.endc

.end
"}
C {code.sym} 90 -110 0 0 {name=Simulation2 only_toplevel=false value="
.include /home/zhixuan/projects/fyp_vco/magic/ip/ptat/ptat_test.spice
.lib /usr/local/share/pdk/sky130A/libs.tech/ngspice/sky130.lib.spice tt

Ikick bias_p1 GND PULSE(0 1u 1u 1n 1n 0.5u 10u)
*Ikick2 bias_p2 GND PULSE(0 1u 1u 1n 1n 0.5u 10u)

.op
.save all

.control
  set noaskquit
  tran 10n 10u
  plot i(vip1) i(vin1) i(vip2) i(vin2)

.endc

.end
"}
