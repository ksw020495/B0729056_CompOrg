module Final(CLK,IR,ConstantIn,AddressOut,DataOut,V,C,N,Z ,DataIn);
	input CLK;
	input [15:0] IR;
	
	reg [6:0] Opcode;
	reg [2:0] DR,SA,SB,RDA,RAA,RBA;
	reg RMB,RMD,RRW,RMW,RPL,RJB,RBC;
	reg [3:0] RFS;
	
	wire [2:0] DA,AA,BA;
	wire MB,MD,RW,MW;
	wire [3:0] FS;
	
	input [7:0] ConstantIn;
	output [7:0] AddressOut,DataOut ,DataIn;
	output V,C,N,Z;
	
	wire [3:0] DecoderOut;
	wire [3:0] Load;
	wire [7:0] DataIn,R0out,R1out,R2out,R3out,MUX_Aout,MUX_Bout,MUXBout,ALUout,Shifterout,MUXFout;
	wire [7:0] MUXDout,RCout;
	
	always@(*) begin
		Opcode=IR[15:9];
		DR=IR[8:6];
		SA=IR[5:3];
		SB=IR[2:0];
	end
	
	always@(*) begin
		RDA=DR;
		RAA=SA;
		RBA=SB;
		RMB=Opcode[6];
		RFS[3:1]=Opcode[3:1];
		RFS[0]=Opcode[0]&(!(Opcode[5]&Opcode[6]));
		RMD=Opcode[4];
		RRW=!Opcode[5];
		RMW=Opcode[5]&(!Opcode[6]);
		RPL=Opcode[5]&Opcode[6];
		RJB=Opcode[4];
		RBC=Opcode[0];
	end
	
	assign DA=RDA;
	assign AA=RAA;
	assign BA=RBA;
	assign MB=RMB;
	assign FS=RFS;
	assign MD=RMD;
	assign RW=RRW;
	assign MW=RMW;
	
	DMEM MEM(
		.MW(MW),
		.Address(MUX_Aout),
		.Data_in(MUXBout),
		.Data_out(DataIn),
		.clk(CLK)
	);
	
	decoder Decoder(
		.DecoderIn(DA[1:0]),
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
		.load_data(8'b00000001),
		.data(R1out)
	);
	
	register R2(
		.clk(CLK),
		.load(Load[2]),
		.load_data(8'b00000010),
		.data(R2out)
	);
	
	register R3(
		.clk(CLK),
		.load(Load[3]),
		.load_data(MUXDout),
		.data(R3out)
	);
	
	mux_4 MUX_A(
		.S(AA[1:0]),
		.d0(R0out),
		.d1(R1out),
		.d2(R2out),
		.d3(R3out),
		.MUXout(MUX_Aout)
	);
	
	mux_4 MUX_B(
		.S(BA[1:0]),
		.d0(R0out),
		.d1(R1out),
		.d2(R2out),
		.d3(R3out),
		.MUXout(MUX_Bout)
	);
	
	mux_2 MUXB(
		.d_0(MUX_Bout),
		.d_1(ConstantIn),
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