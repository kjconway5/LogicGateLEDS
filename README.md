# Logic Gates As Button inputs to LED outputs
This project uses an iCEBreaker FPGA (v1.1a) to mimic digital logic gates using the three button, 5 led breakout board that comes with the FPGA. Buttons are used to mimic the logic gate inputs and led five is used to display the appropriate one bit output. If a logic gate uses only two inputs, then only buttons one and two are used. If a logic gates uses three inputs, then all buttons are used.

For example with the and3 module, if any one or any two buttons are pressed at the same time, then led[5] remains off. But, if all three buttons are pressed simultaneously, then led[5] goes logic high and turns on. 

(openfpgaloader -b ice40_generic -f ice40.bin)
