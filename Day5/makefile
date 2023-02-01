RTL = shift_reg_d5.sv
TB = d5_tb.sv
OBJECT = day5
VCD = dump.vcd

compile:
	iverilog -o $(OBJECT) $(RTL) $(TB)
	vvp $(OBJECT)

clean: 
	rm -f -r $(OBJECT)  $(VCD)

simulate:
	gtkwave $(VCD)

all:	clean compile simulate

