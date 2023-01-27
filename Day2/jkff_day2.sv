`timescale 1ns/1ps

module jkff_day2(input j,k,clk,rst,
		output reg  q1,q1bar,q2,q2bar);

	//sync reset
	always@(posedge clk)
	begin
		if(rst)	
		begin
			q1<=0;
			q1bar<=1;
		end
		else if((j==0 &&  k==0) ||(j==1 && k==1))
		begin
			q1<=q1;
			q1bar<=q1bar;
		end
		else if(j==0 && k==1)
		begin
			q1<=0;
			q1bar<=1;
		end
		else if(j==1 && k==0)
		begin
			q1<=1;
			q1bar<=0;
		end
		else
			$display("Wrong input");
	
	end

	//async reset
	always@(posedge clk or posedge rst)
	begin
		if(rst)
                begin
                        q2<=0;
                        q2bar<=1;
                end
                else if((j==0 &&  k==0) ||(j==1 && k==1))
                begin
                        q2<=q2;
                        q2bar<=q2bar;
                end
                else if(j==0 && k==1)
                begin
                        q2<=0;
                        q2bar<=1;
                end
                else if(j==1 && k==0)
                begin
                        q2<=1;
                        q2bar<=0;
                end
                else
			$display("'Wrong input");
	end

endmodule
