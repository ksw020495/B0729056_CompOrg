module ALU(S,Cin,A,B,G,V,C,N,Z);
	input [2:0] S;
	input Cin;
	input [7:0] A,B;
	output [7:0] G;
	output V,C,N,Z;
	
	wire [7:0] muxout;
	reg Z;
	
	wire [7:0] aout,lout;
	
	arthimetic Ari(
		.S(S[1:0]),
		.Cin(Cin),
		.A(A),
		.B(B),
		.aout(aout),
		.V(V),
		.C(C)
	);
	
	logic Log(
		.S(S[0]),
		.Cin(Cin),
		.A(A),
		.B(B),
		.lout(lout)
	);
	
	mux_2 MUXALU(
		.d_0(aout),
		.d_1(lout),
		.d(S[2]),
		.dout(muxout)
	);
	
	assign G=muxout;
	assign N=G[7];
	
	always@(*) begin
		case(G)
		8'b00000000: Z=1;
		default: Z=0;
		endcase
	end
	
endmodule
	