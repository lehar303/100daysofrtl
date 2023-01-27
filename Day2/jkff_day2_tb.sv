module jkff_day2_tb();

reg  j,k,clk=1'b0 ,rst;
wire q1,q1bar,q2,q2bar;

jkff_day2 dut(.j(j),
	      .k(k),
	      .clk(clk),
	      .rst(rst),
	      .q1(q1),
	      .q1bar(q1bar),
	      .q2(q2),
	      .q2bar(q2));

	always #5 clk=~clk;

	task init();
	begin
		j=0;
		k=0;
		rst = 0;
	end
	endtask

	task sync_jkff();
	begin
		rst = 1;
		#10;
		rst = 0;

		j=0;
		k=0;

		#10;
		j=0;
		k=1;

		#10;
		j=1;
		k=0;

		#10;
		j=1;
		k=1;
	end
	endtask

	task async_jkff();
	begin
                rst = 1;
                #10;
                rst = 0;
		
		#10;
                j=0;
                k=0;

		rst = 1;
		#5;
		rst =0;

                #10;
                j=0;
                k=1;

                #10;
                j=1;
                k=0;

                #10;
                j=1;
                k=1;
	end
        endtask

	initial
	begin
		init;
		#5;
		sync_jkff;
		#5;
		async_jkff;
	end

	initial begin
		$dumpfile("jkff_day2_tb.vcd");
		$dumpvars(0,jkff_day2_tb);
	end

	initial #200 $finish;

endmodule
