module main_decoder(
	input [5:0] op,
	output reg [1:0] ALUOp,
	output reg	MemtoReg, MemWrite, Branch, ALUSrc, RegDst, RegWrite
);
always@(*) begin
	case(op)
		6'h00: begin
			RegWrite = 		1;
			RegDst = 		1;
			ALUSrc = 		0;
			Branch = 		0;
			MemWrite = 		0;
			MemtoReg = 		0;
			ALUOp = 		2'b10;
		end
		6'h23: begin
			RegWrite = 		1;
			RegDst = 		0;
			ALUSrc = 		1;
			Branch = 		0;
			MemWrite = 		0;
			MemtoReg = 		1;
			ALUOp = 		2'b00;
		end
		6'h2B: begin
			RegWrite = 		0;
			ALUSrc = 		1;
			Branch = 		0;
			MemWrite = 		1;
			ALUOp = 		2'b00;
		end
		6'h04: begin
			RegWrite = 		0;
			ALUSrc = 		0;
			Branch = 		1;
			MemWrite = 		0;
			ALUOp = 		2'b01;
		end
	endcase
end
endmodule
