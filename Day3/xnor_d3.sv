`timescale 1ns/1ps

module xnor_d3(input a,b,
		output y1,y2,y3);

	reg temp;
	//gate level
	wire and1,nor1;

	and(and1,a,b);
	nor(nor1,a,b);
	or(y1,and1,nor1);

	//data flow
	assign y2 = (a&b)|(~a&~b);

	//behavioural
	always@(a,b)
	begin
		case({a,b})
			2'b00: temp <= 1'b1;
			2'b01: temp <= 1'b0;
			2'b10: temp <= 1'b0;
			2'b11: temp <= 1'b1;
			default: temp <= 1'b0;
		endcase
	end
	assign y3 = temp;

endmodule

