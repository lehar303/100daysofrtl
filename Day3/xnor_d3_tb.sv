`timescale 1ns/1ps

module xnor_d3_tb();

	reg  a,b;
	wire y1,y2,y3;

	xnor_d3 dut(.a(a),
		    .b(b),
		    .y1(y1),
		    .y2(y2),
		    .y3(y3));

	task init();
	begin
		a = 0;
		b = 0;
	end
	endtask

	task inputs();
	begin
		a = 0;
		b = 0;

		#5;

		a = 0;
		b = 1;

		#5;

		a = 1;
		b = 0;

		#5;

		a = 1;
		b = 1;
	end
	endtask

	initial
	begin
		init;
		#10;
		inputs();
	end

	initial
	begin
		$dumpfile("xnor_d3_tb.vcd");
		$dumpvars(0,xnor_d3_tb);
	end

endmodule
