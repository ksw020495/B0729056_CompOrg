module Shifter(S,B,H);
	input [1:0] S;
	input [7:0] B;
	output [7:0] H;
	
	reg [7:0] H;
	
	always@(*) begin
		case(S)
		2'b00: H=B;
		2'b01: H={1'b0, B[7:1]};
		2'b10: H={B[6:0], 1'b0};
		2'b11: H=8'hx;
		endcase
	end
endmodule