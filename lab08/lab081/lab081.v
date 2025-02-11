module lab081(A, S, L, clock, Q);
	input [7:0] A;
	input S;
	input L;
	input clock;
	output [7:0] Q;
	
	wire [7:0] Rout;
	wire [7:0] addout;
	wire [7:0] D;
	
	adder ADD(
		.carry_in(0),
		.a(A),
		.b(Rout),
		.sum(addout)
	);
	
	mux_2 MUX(
		.d_0(0),
		.d_1(addout),
		.d(S),
		.dout(D)
	);
	
	register R(
		.clk(clock),
		.load(l),
		.load_data(D),
		.data(Rout)
	);
	
	assign Q=Rout;
endmodule
	
	