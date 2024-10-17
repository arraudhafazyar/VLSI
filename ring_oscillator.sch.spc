** sch_path: /home/fazya09/latihan1/ring_oscillator.sch
.subckt ring_oscillator vdd out gnd
*.PININFO vdd:B gnd:B out:O
x1 vdd out net1 gnd hierarchy1
x2 vdd net1 net2 gnd hierarchy1
x3 vdd net2 out gnd hierarchy1
.ends

* expanding   symbol:  /home/fazya09/hierarchy1.sym # of pins=4
** sym_path: /home/fazya09/hierarchy1.sym
** sch_path: /home/fazya09/hierarchy1.sch
.subckt hierarchy1 vdd in out gnd
*.PININFO gnd:I in:I vdd:I out:O
XM1 out in gnd gnd sky130_fd_pr__nfet_01v8 L=0.15 W=1 nf=1 m=1
XM3 out in vdd vdd sky130_fd_pr__pfet_01v8 L=0.15 W=1 nf=1 m=1
.ends

.end
