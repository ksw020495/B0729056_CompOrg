module lab083(X, clock, A, notA, B, notB, Y);
	input X;
	input clock;
	output A;
	output notA;
	output B;
	output notB;
	output Y;
	
	reg A;
	reg B;
	
	always @(posedge clock) begin
		A=(A&X)|(B&X);
		B=(!A)&X;
	end
	
	assign notA=(!A);
	assign notB=(!B);
	assign Y=(A|B)&(!X);
	
endmodule
