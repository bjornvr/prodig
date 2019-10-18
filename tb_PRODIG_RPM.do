# Filename : tb_PRODIG_RPM.do
# Filetype : Modelsim Script File
# Date : 20-06-2011

# Set transcript on
transcript on

# Recreate the work directory and map to work
if {[file exists rtl_work]} {
 vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

# Compile the Double Dabble VHDL description and testbench
vcom -93 -work work ../../PRODIG_RPM.vhd
vcom -93 -work work ../../tb_PRODIG_RPM.vhd
vcom -93 -work work ../../ontdender.vhd
vcom -93 -work work ../../prescaler.vhd
vcom -93 -work work ../../prodig_7_seg_decoder.vhd
vcom -93 -work work ../../RPM_counter.vhd
vcom -93 -work work ../../gem_RPM.vhd
vcom -93 -work work ../../resistor.vhd
vcom -93 -work work ../../division.vhd
vcom -93 -work work ../../bin_bcd.vhd
vcom -93 -work work ../../Max_rpm.vhd
vcom -93 -work work ../../timer.vhd
vcom -93 -work work ../../add3.vhd


# Start the simulator with 1 ns time resolution
vsim -t 1ns -L rtl_work -L work -voptargs="+acc" tb_PRODIG_RPM

# Log all signals in the design, good if the number
# of signals is small.
add log -r *

# Add all toplevel signals
# Add a number of signals of the simulated design
add list *

# Add all toplevel signals
# Add a number of signals of the simulated design
add wave -divider "Inputs"
add wave areset
add wave CLOCK_50
add wave hall_sens
add wave -divider "Internals"
add wave	dut\ clock_int
add wave -divider "Outputs"
add wave HEX0_D
add wave HEX1_D
add wave HEX2_D
add wave -divider "inputs display"
add wave dut\ rpm_mem
add wave dut\ maximale_rpm
add wave dut\ totale_omw_1
add wave dut\ totale_omw_2
add wave dut\ gemiddelde
add wave dut\ tijd_sec
add wave dut\ tijd_min
add wave dut\ seconds_max
add wave dut\ minutes_max
add wave dut\ weerstand


# Open Structure, Signals (waveform) and List window
view structure
view list
view signals
view wave

# Run simulation for 5000 ms
run 5 ms

# Fill up the waveform in the window
wave zoom full