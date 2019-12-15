module arithmeticunit(A,B,S1,S0,Cin,Aout);
	input [7:0] A;
	input [7:0] B;
	input S1,S0,Cin;
	output [7:0] Aout;
	
	reg [7:0] Aout;
	
	always@(*) begin
		case({S1,S0,Cin})
			3'b000: Aout<=A;
			3'b001: Aout<=A+1;
			3'b010: Aout<=A+B;
			3'b011: Aout<=A+B+1;
			3'b100: Aout<=A-B-1;
			3'b101: Aout<=A-B;
			3'b110: Aout<=A-1;
			3'b111: Aout<=A;
		endcase
	end
endmodule