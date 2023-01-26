`timescale 1ns/1ps

module mux_d1_tb();

	logic [7:0]a,b;
	logic s;

	wire [7:0] y;

	mux_d1 dut(.I0(a),
	  	 .I1(b),
	  	 .S(s),
	  	.Y(y));

	integer i;

	initial
	begin
		for(i=0; i<50; i++)
		begin
			a = $urandom_range(0,'hff);
			b = $urandom_range(0,'hff);
			s = $urandom_range(0,1'b1);
			#5;
		$monitor("A: %b,B: %b,S: %b,Y: %b",a,b,s,y);
		end	

		#200 $finish();
	end

	initial
	begin
		$dumpfile("mux_d1_tb.vcd");
		$dumpvars(0,mux_d1_tb);
	end
endmodule


