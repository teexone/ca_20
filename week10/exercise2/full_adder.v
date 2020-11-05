module full_adder(
	input x,
	input y,
	input c_in,
	output s,
	output c_out
);
	wire s1, c1, s2, c2;
	half_adder hs(x, y, s1, c1);
	half_adder hr(c_in, s1, s2, c2);
	assign s = s2;
	assign c_out = c2 | c1;
endmodule