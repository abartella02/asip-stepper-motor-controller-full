module op2_mux (input [1:0] select, input [7:0] register, immediate,
				output reg [7:0] result);
				
	always @(*) begin
			case(select) 
				2'b00: result = register;
				2'b01: result = immediate;
				2'b10: result = 1;
				2'b11: result = 2;
			endcase
		end	

endmodule
