`timescale 1ns/1ps

module mux_d1(input S,
		input [7:0] I0, I1,
		output [7:0] Y);

assign Y = S?I0:I1;


endmodule
