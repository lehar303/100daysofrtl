RTL = xnor_d3.sv
TB = xnor_d3_tb.sv
OBJECT = day3

compile:
	iverilog -o $(OBJECT) $(RTL) $(TB)
	vvp $(OBJECT)

clean: 
	rm -f -r $(OBJECT)  xnor_d3_tb.vcd

simulate:
	gtkwave xnor_d3_tb.vcd

all:	clean compile simulate

