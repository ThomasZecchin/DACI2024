v {xschem version=3.0.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 260 90 340 90 { lab=GND}
N 140 90 220 90 { lab=#net1}
N 260 10 260 60 { lab=GND}
N 260 10 390 10 { lab=GND}
N 340 90 350 90 {
lab=GND}
N 350 10 350 90 {
lab=GND}
N 140 10 140 30 {
lab=GND}
N 140 10 260 10 {
lab=GND}
N 260 130 270 130 {
lab=#net2}
N 260 120 260 130 {
lab=#net2}
N 420 90 420 130 {
lab=#net3}
N 420 10 420 30 {
lab=GND}
N 390 10 490 10 {
lab=GND}
N 490 10 490 20 {
lab=GND}
N 270 130 310 130 {
lab=#net2}
N 370 130 420 130 {
lab=#net3}
C {gnd.sym} 490 20 0 0 {name=l1 lab=GND}
C {vsource.sym} 140 60 2 0 {name=VGS value=DC\{vgs\}}
C {vsource.sym} 420 60 2 0 {name=VDS value=DC\{vds\}}
C {netlist_not_shown.sym} 580 30 0 0 {name=simulation only_toplevel=false 
value="

* Parameters
.param vds = -1.8
.param vgs = -0.9
.options TEMPS = 27.0

* Models
.lib ~/skywater/skywater-pdk/libraries/sky130_fd_pr_ngspice/latest/models/corners/sky130.lib TT

* Data to save
.save all
+ @M.XM2.msky130_fd_pr__pfet_01v8[id]
+ @M.XM2.msky130_fd_pr__pfet_01v8[gm]
+ @M.XM2.msky130_fd_pr__pfet_01v8[vth]
+ @M.XM2.msky130_fd_pr__pfet_01v8[vds]
+ @M.XM2.msky130_fd_pr__pfet_01v8[vdsat]
+ @M.XM2.msky130_fd_pr__pfet_01v8[vgs]
+ I(V1);


* Simulation
.control
  dc VDS 0 -1.8 -0.01 VGS 0 -1.8 -0.3
  setplot dc1
  plot I(V1) ylabel Id xlabel Vds title 'Id vs Vds vs Vgs'
  set filetype = ascii
  write tp1_2_dc1.raw

  reset
  dc VGS 0 -1.8 -0.01
  setplot dc2
  plot I(V1) ylabel Id xlabel Vgs title 'Id vs Vgs'
  set filetype = ascii
  write tp1_2_dc2.raw


  reset
  unset filetype
  op
  save all
  write tp1_2.raw 


.endc



.end
"}
C {launcher.sym} 660 -80 0 0 {name=h1
descr=Anotar 
 tclcommand="ngspice::annotate"}
C {sky130_fd_pr/pfet_01v8.sym} 240 90 0 0 {name=M2
L=2
W=10
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {vsource.sym} 340 130 1 0 {name=V1 value=0}
C {ngspice_get_value.sym} 270 50 0 0 {name=r6 node=v(@M.XM2.msky130_fd_pr__pfet_01v8[vth])
descr="Vth="}
