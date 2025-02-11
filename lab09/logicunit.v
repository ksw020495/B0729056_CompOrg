module logicunit(A,B,S0,Cin,Lout);
	input [7:0] A;
	input [7:0] B;
	input S0,Cin;
	output [7:0] Lout;
	
	reg [7:0] Lout;
	
	always@(*) begin
		case({S0,Cin})
			2'b00: Lout<=A&B;
			2'b01: Lout<=A|B;
			2'b10: Lout<=A^B;
			2'b11: Lout<=8'b11111111-A;
		endcase
	end
endmodule