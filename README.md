# Hardware Modeling using Verilog
This repository contains the Verilog codes which were practiced during the learning of "**Hardware Modeling using Verilog** - NPTEL lectures via Youtube
https://youtube.com/playlist?list=PLJ5C_6qdAvBELELTSPgzYkQg3HgclQh-5&si=R9Dg886a_zjWyMa9

All the VERILOG codes were performed using Open source software like ICARUS VERILOG and GTKWAVE (LINUX)
The .v files are compiled using the Linux commands

**1.Compile Verilog Code**

"iverilog -o file_name file_name.v"

This command compiles the Verilog code in file_name.v and produces an output file file_name.

**2.Run the Simulation**

"vvp file_name" 

This command runs the compiled Verilog code and produces output in the terminal, also generating a dumpfile file_name.vcd for visualization.

**3.View in GTKWave**

"gtkwave file_name.vcd" . 

This command opens the waveform file file_name.vcd in GTKWave for graphical representation.
