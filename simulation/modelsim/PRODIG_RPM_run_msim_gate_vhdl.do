transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vcom -93 -work work {PRODIG_RPM.vho}

do "C:/Git/PRODIG/prodig/tb_PRODIG_RPM.do"
