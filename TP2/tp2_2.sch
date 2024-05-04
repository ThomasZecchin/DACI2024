v {xschem version=3.0.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 60 300 60 360 { lab=GND}
N 60 180 60 240 { lab=vss}
N 320 110 320 160 { lab=vbias_n}
N 320 -60 320 0 { lab=vdd}
N 320 -60 510 -60 { lab=vdd}
N 510 -60 510 0 { lab=vdd}
N 510 60 510 160 { lab=#net1}
N 510 220 510 320 { lab=vss}
N 320 320 510 320 { lab=vss}
N 320 220 320 320 { lab=vss}
N 240 190 320 190 { lab=vss}
N 240 190 240 320 { lab=vss}
N 240 320 320 320 { lab=vss}
N 510 190 590 190 { lab=vss}
N 590 190 590 320 { lab=vss}
N 510 320 590 320 { lab=vss}
N 150 300 150 360 { lab=vss}
N 150 180 150 240 { lab=vdd}
N 380 190 470 190 { lab=vbias_n}
N 320 110 380 110 { lab=vbias_n}
N 380 110 380 190 { lab=vbias_n}
N 320 60 320 110 { lab=vbias_n}
N 360 190 380 190 { lab=vbias_n}
N 680 220 680 320 {
lab=vss}
N 840 220 840 320 {
lab=vss}
N 680 320 840 320 {
lab=vss}
N 840 60 840 160 {
lab=#net2}
N 840 -60 840 0 {
lab=vdd}
N 680 -60 680 0 {
lab=vdd}
N 680 190 760 190 {
lab=vss}
N 760 190 760 320 {
lab=vss}
N 840 190 920 190 {
lab=vss}
N 920 190 920 320 {
lab=vss}
N 840 320 920 320 {
lab=vss}
N 800 140 800 190 {
lab=vbias_n}
N 640 140 640 190 {
lab=vbias_n}
N 510 -60 680 -60 {
lab=vdd}
N 680 -60 840 -60 {
lab=vdd}
N 590 320 680 320 {
lab=vss}
N 680 60 680 160 {
lab=#net3}
C {netlist_not_shown.sym} 50 -60 0 0 {name=simulation only_toplevel=false 
value="

* Parameters
.param vdd = 1.8
.param vss = 0.0
.param v1 = 0.6
.param v2 = 0.9
.param v3 = 1.2
.param iref = 200u
.param w = 10
.param l = 0.5

* Models
.lib ~/skywater/skywater-pdk/libraries/sky130_fd_pr_ngspice/latest/models/corners/sky130.lib TT

* Data to save
.save all
+ @M.XM1.msky130_fd_pr__nfet_01v8[id]
+ @M.XM1.msky130_fd_pr__nfet_01v8[vth]
+ @M.XM1.msky130_fd_pr__nfet_01v8[vdsat]
+ @M.XM1.msky130_fd_pr__nfet_01v8[gm]
+ @M.XM1.msky130_fd_pr__nfet_01v8[vds]
+ @M.XM1.msky130_fd_pr__nfet_01v8[vgs]
+ @M.XM1.msky130_fd_pr__nfet_01v8[w]
+ @M.XM2.msky130_fd_pr__nfet_01v8[id]
+ @M.XM2.msky130_fd_pr__nfet_01v8[gm]
+ @M.XM2.msky130_fd_pr__nfet_01v8[vds]
+ @M.XM2.msky130_fd_pr__nfet_01v8[vgs]
+ @M.XM2.msky130_fd_pr__nfet_01v8[w]
+ @M.XM2.msky130_fd_pr__nfet_01v8[vdsat]
+ @M.XM2.msky130_fd_pr__nfet_01v8[vth]
+ @M.XM3.msky130_fd_pr__nfet_01v8[id]
+ @M.XM3.msky130_fd_pr__nfet_01v8[vth]
+ @M.XM3.msky130_fd_pr__nfet_01v8[vdsat]
+ @M.XM3.msky130_fd_pr__nfet_01v8[gm]
+ @M.XM3.msky130_fd_pr__nfet_01v8[vds]
+ @M.XM3.msky130_fd_pr__nfet_01v8[vgs]
+ @M.XM3.msky130_fd_pr__nfet_01v8[w]
+ @M.XM4.msky130_fd_pr__nfet_01v8[id]
+ @M.XM4.msky130_fd_pr__nfet_01v8[gm]
+ @M.XM4.msky130_fd_pr__nfet_01v8[vds]
+ @M.XM4.msky130_fd_pr__nfet_01v8[vgs]
+ @M.XM4.msky130_fd_pr__nfet_01v8[w]
+ @M.XM4.msky130_fd_pr__nfet_01v8[vdsat]
+ @M.XM4.msky130_fd_pr__nfet_01v8[vth]

* Simulation
.control
  let wi = 4.5
  let wf = 20
  let wstep = 0.7
  
  dowhile wi <= wf
    print @M.XM1.msky130_fd_pr__nfet_01v8[w]
    alter @M.XM1.msky130_fd_pr__nfet_01v8[w] = wi
    alter @M.XM2.msky130_fd_pr__nfet_01v8[w] = wi
    alter @M.XM3.msky130_fd_pr__nfet_01v8[w] = wi
    alter @M.XM4.msky130_fd_pr__nfet_01v8[w] = wi
    let wi = wi + wstep
    *op
    print @M.XM1.msky130_fd_pr__nfet_01v8[w]
    print @M.XM1.msky130_fd_pr__nfet_01v8[id]
    print @M.XM1.msky130_fd_pr__nfet_01v8[vds]
    print @M.XM1.msky130_fd_pr__nfet_01v8[vgs]
    print @M.XM2.msky130_fd_pr__nfet_01v8[w]
    print @M.XM2.msky130_fd_pr__nfet_01v8[id]
    print @M.XM2.msky130_fd_pr__nfet_01v8[vds]
    print @M.XM2.msky130_fd_pr__nfet_01v8[vgs]
    print @M.XM3.msky130_fd_pr__nfet_01v8[w]
    print @M.XM3.msky130_fd_pr__nfet_01v8[id]
    print @M.XM3.msky130_fd_pr__nfet_01v8[vds]
    print @M.XM3.msky130_fd_pr__nfet_01v8[vgs]
    print @M.XM4.msky130_fd_pr__nfet_01v8[w]
    print @M.XM4.msky130_fd_pr__nfet_01v8[id]
    print @M.XM4.msky130_fd_pr__nfet_01v8[vds]
    print @M.XM4.msky130_fd_pr__nfet_01v8[vgs]
    save all
  end
  write tp2_2.raw


  unset filetype
  op
  save all
  write tp2_2.raw

.endc

.end
"}
C {sky130_fd_pr/nfet_01v8.sym} 340 190 0 1 {name=M1
L=\{l\}
W=\{w\}
nf=1 
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 490 190 0 0 {name=M2
L=\{l\}
W=\{w\}
nf=1 
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {isource.sym} 320 30 0 0 {name=IREF value=DC\{iref\}}
C {vsource.sym} 60 270 0 0 {name=VSS value=DC\{vss\}}
C {gnd.sym} 60 360 0 0 {name=l1 lab=GND}
C {vsource.sym} 150 270 0 0 {name=VDD value=DC\{vdd\}}
C {lab_pin.sym} 60 180 1 0 {name=l2 sig_type=std_logic lab=vss}
C {lab_pin.sym} 150 180 1 0 {name=l3 sig_type=std_logic lab=vdd
}
C {lab_pin.sym} 150 360 3 0 {name=l4 sig_type=std_logic lab=vss}
C {lab_wire.sym} 420 -60 0 0 {name=l5 sig_type=std_logic lab=vdd}
C {lab_wire.sym} 430 320 0 0 {name=l7 sig_type=std_logic lab=vss}
C {launcher.sym} 110 90 0 0 {name=h1
descr=Anotar 
 tclcommand="ngspice::annotate"}
C {ngspice_probe.sym} 510 100 0 0 {name=r1}
C {ngspice_probe.sym} 450 -60 0 0 {name=r2}
C {ngspice_probe.sym} 380 110 0 0 {name=r3}
C {ngspice_probe.sym} 250 320 0 0 {name=r4}
C {ngspice_get_value.sym} 550 70 0 0 {name=r5 node=i(@M.XM2.msky130_fd_pr__nfet_01v8[id])
descr="Id_M2="}
C {ngspice_get_value.sym} 550 100 0 0 {name=r6 node=v(@M.XM2.msky130_fd_pr__nfet_01v8[vds])
descr="Vds_M2="}
C {ngspice_get_value.sym} 240 70 0 0 {name=r7 node=i(@M.XM1.msky130_fd_pr__nfet_01v8[id])
descr="Id_REF="}
C {ngspice_get_value.sym} 240 100 0 0 {name=r8 node=v(@M.XM1.msky130_fd_pr__nfet_01v8[vds])
descr="Vds_REF="}
C {ngspice_get_value.sym} 240 160 0 0 {name=r9 node=v(@M.XM1.msky130_fd_pr__nfet_01v8[vth])
descr="Vth_REF="}
C {ngspice_get_value.sym} 240 130 0 0 {name=r10 node=v(@M.XM1.msky130_fd_pr__nfet_01v8[vdsat])
descr="Vdsat_REF="}
C {vsource.sym} 680 30 0 0 {name=V2 value=DC\{v2\}}
C {vsource.sym} 840 30 0 0 {name=V3 value=DC\{v3\}}
C {sky130_fd_pr/nfet_01v8.sym} 660 190 0 0 {name=M3
L=\{l\}
W=\{w\}
nf=1 
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 820 190 0 0 {name=M4
L=\{l\}
W=\{w\}
nf=1 
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {lab_pin.sym} 430 190 1 0 {name=l10 sig_type=std_logic lab=vbias_n
}
C {lab_pin.sym} 640 140 1 0 {name=l6 sig_type=std_logic lab=vbias_n
}
C {lab_pin.sym} 800 140 1 0 {name=l8 sig_type=std_logic lab=vbias_n
}
C {vsource.sym} 510 30 0 0 {name=V1 value=DC\{v1\}}
C {ngspice_get_value.sym} 720 70 0 0 {name=r11 node=i(@M.XM3.msky130_fd_pr__nfet_01v8[id])
descr="Id_M3="}
C {ngspice_get_value.sym} 890 70 0 0 {name=r12 node=i(@M.XM4.msky130_fd_pr__nfet_01v8[id])
descr="Id_M4="}
C {ngspice_get_value.sym} 720 100 0 0 {name=r13 node=v(@M.XM3.msky130_fd_pr__nfet_01v8[vds])
descr="Vds_M3="}
C {ngspice_get_value.sym} 890 100 0 0 {name=r14 node=v(@M.XM4.msky130_fd_pr__nfet_01v8[vds])
descr="Vds_M4="}
C {ngspice_probe.sym} 680 100 0 0 {name=r15}
C {ngspice_probe.sym} 840 100 0 0 {name=r16}
C {ngspice_get_value.sym} 550 130 0 0 {name=r17 node=v(@M.XM2.msky130_fd_pr__nfet_01v8[vdsat])
descr="Vdsat_M2="}
C {ngspice_get_value.sym} 550 160 0 0 {name=r18 node=v(@M.XM2.msky130_fd_pr__nfet_01v8[vth])
descr="Vth_M2="}
C {ngspice_get_value.sym} 720 160 0 0 {name=r19 node=v(@M.XM3.msky130_fd_pr__nfet_01v8[vth])
descr="Vth_M3="}
C {ngspice_get_value.sym} 890 160 0 0 {name=r20 node=v(@M.XM4.msky130_fd_pr__nfet_01v8[vth])
descr="Vth_M4="}
C {ngspice_get_value.sym} 720 130 0 0 {name=r21 node=v(@M.XM3.msky130_fd_pr__nfet_01v8[vdsat])
descr="Vdsat_M3="}
C {ngspice_get_value.sym} 890 130 0 0 {name=r22 node=v(@M.XM4.msky130_fd_pr__nfet_01v8[vdsat])
descr="Vdsat_M4="}
