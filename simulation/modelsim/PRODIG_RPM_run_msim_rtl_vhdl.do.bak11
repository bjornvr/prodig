transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {H:/QUARTUS/PRODIG/PRODIG_RPM/prescaler.vhd}
vcom -93 -work work {H:/QUARTUS/PRODIG/PRODIG_RPM/RPM_counter.vhd}
vcom -93 -work work {H:/QUARTUS/PRODIG/PRODIG_RPM/PRODIG_RPM.vhd}
vcom -93 -work work {H:/QUARTUS/PRODIG/PRODIG_RPM/prodig_7_seg_decoder.vhd}

do "H:/QUARTUS/PRODIG/PRODIG_RPM/tb_PRODIG_RPM.do"
