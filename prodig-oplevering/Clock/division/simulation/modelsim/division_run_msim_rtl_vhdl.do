transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Git/PRODIG/prodig/Clock/division/division.vhd}

do "C:/Git/PRODIG/prodig/Clock/division/tb_division.do"
