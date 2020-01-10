module mux_4(S,d0,d1,d2,d3,MUXout);
	input [1:0] S;
	input [7:0] d0,d1,d2,d3;
	output [7:0] MUXout;
	
	reg [7:0] MUXout;
	
	always@(*) begin
		case(S)
			2'b00: MUXout=d0;
			2'b01: MUXout=d1;
			2'b10: MUXout=d2;
			2'b11: MUXout=d3;
		endcase
	end
endmodule