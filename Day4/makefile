RTL = tff_d4.sv
TB = tff_d4_tb.sv
OBJECT = day4
VCD = tff_d4_tb.vcd

compile:
	iverilog -o $(OBJECT) $(RTL) $(TB)
	vvp $(OBJECT)

clean: 
	rm -f -r $(OBJECT)  $(VCD)

simulate:
	gtkwave $(VCD)

all:	clean compile simulate

