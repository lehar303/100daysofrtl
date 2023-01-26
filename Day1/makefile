RTL = mux_d1.sv
TB = mux_d1_tb.sv
OBJECT = day1

compile:
	iverilog -o $(OBJECT) $(RTL) $(TB)
	vvp $(OBJECT)

clean: 
	rm -f -r $(OBJECT)  mux_d1_tb.vcd

simulate:
	gtkwave mux_d1_tb.vcd

run_sv:
	$(clean) $(compile) $(simulate)

