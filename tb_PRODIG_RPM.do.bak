# Filename : tb_RPM_counter.do
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
vcom -93 -work work ../../RPM_counter.vhd
vcom -93 -work work ../../tb_RPM_counter.vhd

# Start the simulator with 1 ns time resolution
vsim -t 1ns -L rtl_work -L work -voptargs="+acc" tb_RPM_counter

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
add wave clock
add wave hall_sens
add wave -divider "Outputs"
add wave tix_mem

# Open Structure, Signals (waveform) and List window
view structure
view list
view signals
view wave

# Run simulation for 5000 us
run 5000 us

# Fill up the waveform in the window
wave zoom full