module lab09(s,S2,S1,S0,Cin,l,A,B,C,D,clock,G);
	input [7:0] A;
	input [7:0] B;
	input [7:0] C;
	input [7:0] D;
	input clock;
	input S2,S1,S0,Cin,l;
	input [1:0] s;
	output [7:0] G;
	
	reg [7:0] WIREA;
	reg [7:0] WIREB;
	reg [7:0] WIREC;
	reg [7:0] WIRED;
	wire [7:0] ALUin;
	wire [7:0] arithout;
	wire [7:0] logout;
	wire [7:0] D_;
	wire [7:0] Rout;
	
	always@(A or B or C or D) begin
		if(A>=B&&C>=D) begin
			WIREA=A;
			WIREB=B;
			WIREC=C;
			WIRED=D;
		end
		else if(A>=B&&C<D) begin
			WIREA=A;
			WIREB=B;
			WIREC=D;
			WIRED=C;
		end
		else if(A<B&&C>=D) begin
			WIREA=B;
			WIREB=A;
			WIREC=C;
			WIRED=D;
		end
		else begin
			WIREA=B;
			WIREB=A;
			WIREC=D;
			WIRED=C;
		end
	end
	
	mux_4 MUX4TO1(
		.d_0(WIREA),
		.d_1(WIREB),
		.d_2(WIREC),
		.d_3(WIRED),
		.d(s),
		.dout(ALUin)
	);
	
	arithmeticunit Ari(
		.B(ALUin),
		.A(Rout),
		.S1(S1),
		.S0(S0),
		.Cin(Cin),
		.Aout(arithout)
	);
	
	logicunit Log(
		.B(ALUin),
		.A(Rout),
		.S0(S0),
		.Cin(Cin),
		.Lout(logout)
	);
	
	mux_2 MUX(
		.d_0(arithout),
		.d_1(logout),
		.d(S2),
		.dout(D_)
	);
	
	register R(
		.clk(clock),
		.load(l),
		.load_data(D_),
		.data(Rout)
	);
	
	assign G=Rout;
	
endmodule