module delay_counter (input clk, reset_n, start, enable, input [7:0] delay, output done);
parameter BASIC_PERIOD=20'd500000;   // can change this value to make delay longer
	
	reg [19:0] timer;
	reg [7:0] count;
	reg d;
	
	assign done = d;
	always @(posedge clk) begin
		if (!reset_n) begin
			timer <= 20'b0;
			count <= 8'b0;
			d <= 0;
			
		end
		else if (start) begin
			timer <= 20'b0;
			count <= delay;
			d <=0;
		end
		else if (enable) begin
			if (timer < BASIC_PERIOD) timer <= timer + 20'd1;
			else begin
				count <= count - 8'd1;
				if (count == 8'b0) d <= 1;
			end
		end
		else d <= 0;
	end

endmodule
