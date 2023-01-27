RTL = jkff_day2.sv
TB = jkff_day2_tb.sv
OBJECT = day2

compile:
	iverilog -o $(OBJECT) $(RTL) $(TB)
	vvp $(OBJECT)

clean: 
	rm -f -r $(OBJECT)  jkff_day2_tb.vcd

simulate:
	gtkwave jkff_day2_tb.vcd

all:	clean compile simulate

