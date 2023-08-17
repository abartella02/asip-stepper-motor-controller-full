module result_mux (
	input select_result,
	input [7:0] alu_result,
	output reg [7:0] result
);

	always @(*) begin
		case(select_result) 
			1'b0: result = alu_result;
			1'b1: result = 8'b0;
		endcase
	end		
endmodule
