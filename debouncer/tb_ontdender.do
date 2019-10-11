# Filename : tb_ontdender.do
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
vcom -93 -work work ../../ontdender.vhd
vcom -93 -work work ../../tb_ontdender.vhd

# Start the simulator with 1 ns time resolution
#vsim -t 1ns -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L
vsim -t 1ns -L rtl_work -L work -voptargs="+acc" tb_ontdender

# Log all signals in the design, good if the number
# of signals is small.
add log -r *

# Add all toplevel signals
# Add a number of signals of the simulated design
add list *
add list dut/*

# Add all toplevel signals
# Add a number of signals of the simulated design
add wave -divider "Inputs"
add wave input
add wave	CLK_10kHz
add wave -divider "Internals"
add wave dut/ffa
add wave dut/a
add wave -divider "Outputs"
add wave output

# Open Structure, Signals (waveform) and List window
view structure
view list
view signals
view wave

# Run simulation for 5000 ns
run 100 ms

# Fill up the waveform in the window
wave zoom full 