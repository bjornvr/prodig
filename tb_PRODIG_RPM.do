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
#vcom -93 -work work ../../ontdender.vhd
vcom -93 -work work ../../prescaler.vhd
vcom -93 -work work ../../prodig_7_seg_decoder.vhd
vcom -93 -work work ../../RPM_counter.vhd

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
add wave clock1
add wave tix_mem
add wave -divider "Outputs"
add wave HEX0_D
add wave HEX1_D
add wave HEX2_D


# Open Structure, Signals (waveform) and List window
view structure
view list
view signals
view wave

# Run simulation for 5000 us
run 25000 us

# Fill up the waveform in the window
wave zoom full