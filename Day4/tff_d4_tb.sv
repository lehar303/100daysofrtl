`timescale 1ns/1ps

module tff_d4_tb();
	
	logic t,clk=1'b0,rst;
	wire q;

	tff_d4 dut(.t(t),
		   .clk(clk),
		   .rst(rst),
		   .q(q));

	always #5 clk=~clk;

	task init();
	begin
		t = 1'b1;
		rst = 1'b0;
	end
	endtask

	task reset();
	begin
		rst = 1'b1;
		#10;
		rst = 1'b0;
	end
	endtask

	initial
	begin
		init;
		#5;
		reset;
		#5;
		t = 1'b0;
		#5;
		t = 1'b1;
	end

	initial 
	begin
		$dumpfile("tff_d4_tb.vcd");
		$dumpvars(0,tff_d4_tb);
	end

	initial #200 $finish;

endmodule
