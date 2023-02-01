`timescale 1ns/1ps

module shift_reg_d5(
	input i,rst,clk,
	output reg [3:0]o);

	always@(posedge clk)
		if(rst)
			o <= 4'b0;
		else
			o <= {i,o[3:1]};
		


endmodule
