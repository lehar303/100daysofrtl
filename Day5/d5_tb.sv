`timescale 1ns/1ps

module d5_tb();

	reg a,clk=1'b0,rst;
	wire [3:0]shifted_output;

	shift_reg_d5 dut(.i(a),
			.clk(clk),
			.rst(rst),
			.o(shifted_output));

	
	always #5 clk = ~clk;

	task init();
	begin
		a = 1'b0;
		rst = 1'b0;
	end
	endtask

	task inputs(input reg x);
	begin
		a = x;
		$display("Output: %b",shifted_output);
	end
	endtask

	initial
	begin
		init;
		#5;
		rst = 1'b1;
		#5;
		rst = 1'b0;
		inputs(1);
		#10;
		inputs(0);
		#10;
		inputs(1);

	end

	initial #200 $finish;

	initial
	begin
		$dumpfile("dump.vcd");
		$dumpvars(0,d5_tb);
	end


endmodule
