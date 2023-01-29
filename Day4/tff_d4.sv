`timescale 1ns/1ps

module tff_d4(input t,clk,rst,
		output logic q);

	always@(posedge clk)
	begin
		if(rst)
			q<=1'b0;
		else
		begin
			if(t)
				q<=~q;
			else
				q<=q;
		end
	end
endmodule
