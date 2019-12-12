module lab082(A, B, C, X, Y);

	input A;
	input B;
	input C;
	output X;
	output Y;
	
	wire D;
	wire E;
	wire F;
	wire G;
	
	assign D=A&B&C;
	assign E=(!A)&C;
	assign F=A|B;
	assign G=A&C;
	assign X=D^E;
	assign Y=(!F)^G;
	
endmodule