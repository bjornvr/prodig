transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Git/PRODIG/prodig/division.vhd}
vcom -93 -work work {C:/Git/PRODIG/prodig/prescaler.vhd}
vcom -93 -work work {C:/Git/PRODIG/prodig/RPM_counter.vhd}
vcom -93 -work work {C:/Git/PRODIG/prodig/PRODIG_RPM.vhd}
vcom -93 -work work {C:/Git/PRODIG/prodig/prodig_7_seg_decoder.vhd}

do "C:/Git/PRODIG/prodig/tb_PRODIG_RPM.do"
