module decoder(DecoderIn,DecoderOut);
	input [1:0] DecoderIn;
	output [3:0] DecoderOut;
	
	reg [3:0] DecoderOut;
	
	always@(*) begin
		case(DecoderIn)
			2'b00: DecoderOut=4'b0001;
			2'b01: DecoderOut=4'b0010;
			2'b10: DecoderOut=4'b0100;
			2'b11: DecoderOut=4'b1000;
		endcase
	end
endmodule