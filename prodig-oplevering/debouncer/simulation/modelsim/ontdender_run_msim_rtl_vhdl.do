transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Git/PRODIG/prodig/debouncer/ontdender.vhd}

do "C:/Git/PRODIG/prodig/debouncer/tb_ontdender.do"
