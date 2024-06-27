All the VERILOG codes were performed using ICARUS VERILOG and GTKWAVE (LINUX)
The .v files are compiled using the linux commands

1.Compile Verilog Code:

"iverilog -o file_name file_name.v"

This command compiles the Verilog code in file_name.v and produces an output file file_name.

2.Run the Simulation:

"vvp file_name" 

This command runs the compiled Verilog code, generating a dumpfile file_name.vcd for visualization.

3.View in GTKWave:

"gtkwave file_name.vcd" . 

This command opens the waveform file file_name.vcd in GTKWave for graphical representation.
