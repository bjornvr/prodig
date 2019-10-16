# Filename : tb_timer.do
# Filetype : Modelsim Script File
# Date : 20-09-2019

# Set transcript on
transcript on

# Recreate the work directory and map to work
if {[file exists rtl_work]} {
 vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

# Compile the Double Dabble VHDL description and testbench
vcom -93 -work work ../../timer.vhd
vcom -93 -work work ../../tb_timer.vhd

# Start the simulator with 1 ns time resolution
vsim -t 1ns -L rtl_work -L work -voptargs="+acc" tb_timer

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
add wave clk
add wave rpm_max
add wave -divider "Internals"
add wave dut/ticks
add wave -divider "Outputs"
add wave seconds
add wave minutes
add wave seconds_max
add wave minutes_max

# Open Structure, Signals (waveform) and List window
view structure
view list
view signals
view wave

# Run simulation for 5000 ns
run 50 ms

# Fill up the waveform in the window
wave zoom full