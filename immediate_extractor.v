module immediate_extractor (input [7:0] instruction, input [1:0] select, output reg [7:0] immediate);

	always @(*) begin
		case(select)
			2'b00: immediate = {{instruction[4:2]},{5'b00000}};
			2'b01: immediate = {{instruction[3:0]},{4'b0000}};
			2'b10: immediate = {{3{instruction[4]}},{instruction[4:0]}};
			2'b11: immediate = 8'b00000000;
		endcase
	end
	
endmodule
