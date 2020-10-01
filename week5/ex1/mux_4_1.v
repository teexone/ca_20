module mux_4_1 (
	input x1,
	input x2,
	input x3,
	input x4,
	input s,
	output reg f
);
always@ (*)
	begin
	case (s)
		0: f = x1;
		1: f = x2;
		2: f = x3;
		3: f = x4;
	endcase
	end
endmodule