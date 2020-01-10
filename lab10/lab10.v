module lab10(RW,DA,AA,BA,MB,FS,MD,CLK,ConstantIn,DataIn,AddressOut,DataOut,V,C,N,Z);
	input RW,MB,MD,CLK;
	input [1:0] DA,AA,BA;
	input [3:0] FS;
	input [7:0] DataIn,ConstantIn;
	output [7:0] AddressOut,DataOut;
	output V,C,N,Z;
	
	wire [3:0] DecoderOut;
	wire [3:0] Load;
	wire [7:0] R0out,R1out,R2out,R3out,MUX_Aout,MUX_Bout,MUXBout,ALUout,Shifterout,MUXFout;
	
	wire [7:0] MUXDout,RCout;
	
	decoder Decoder(
		.DecoderIn(DA),
		.DecoderOut(DecoderOut)
	);
	
	assign Load[0]=RW&DecoderOut[0];
	assign Load[1]=RW&DecoderOut[1];
	assign Load[2]=RW&DecoderOut[2];
	assign Load[3]=RW&DecoderOut[3];
	
	register R0(
		.clk(CLK),
		.load(Load[0]),
		.load_data(MUXDout),
		.data(R0out)
	);
	
	register R1(
		.clk(CLK),
		.load(Load[1]),
		.load_data(MUXDout),
		.data(R1out)
	);
	
	register R2(
		.clk(CLK),
		.load(Load[2]),
		.load_data(MUXDout),
		.data(R2out)
	);
	
	register R3(
		.clk(CLK),
		.load(Load[3]),
		.load_data(MUXDout),
		.data(R3out)
	);
	
	mux_4 MUX_A(
		.S(AA),
		.d0(R0out),
		.d1(R1out),
		.d2(R2out),
		.d3(R3out),
		.MUXout(MUX_Aout)
	);
	
	mux_4 MUX_B(
		.S(BA),
		.d0(R0out),
		.d1(R1out),
		.d2(R2out),
		.d3(R3out),
		.MUXout(MUX_Bout)
	);
	
	mux_2 MUXB(
		.d_0(MUX_Bout),
		.d_1(8'b00000000),
		.d(MB),
		.dout(MUXBout)
	);
	
	assign AddressOut=MUX_Aout;
	assign DataOut=MUX_Bout;
	
	ALU _ALU(
		.S(FS[3:1]),
		.Cin(FS[0]),
		.A(MUX_Aout),
		.B(MUXBout),
		.G(ALUout),
		.V(V),
		.C(C),
		.N(N),
		.Z(Z)
	);
	
	Shifter _Shifter(
		.S(FS[1:0]),
		.B(MUXBout),
		.H(Shifterout)
	);
	
	mux_2 MUX_F(
		.d_0(ALUout),
		.d_1(Shifterout),
		.d(FS[3]&FS[2]),
		.dout(MUXFout)
	);
	
	mux_2 MUX_D(
		.d_0(MUXFout),
		.d_1(DataIn),
		.d(MD),
		.dout(MUXDout)
	);
endmodule