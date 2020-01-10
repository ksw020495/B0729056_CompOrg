module logic(S,Cin,A,B,lout);
	input S,Cin;
	input [7:0] A,B;
	output [7:0] lout;
	
	reg [7:0] lout;
	
	always@(*) begin
		case({S,Cin})
		2'b00: lout = A&B;
		2'b01: lout = A|B;
		2'b10: lout = A^B;
		2'b11: lout = 8'b11111111-A;
		endcase
	end
endmodule