module lab083new(clock, X, A, B, Y);
	input clock,X;
	output A,B,Y;
	
	reg A,B,Y;
	
	always@(posedge clock) begin
		case({A,B,X})
			3'b000:
			begin
			A = 1'b0;
			B = 1'b0;
			end
			3'b001:
			begin
			A = 1'b0;
			B = 1'b1;
			end
			3'b010:
			begin
			A = 1'b0;
			B = 1'b0;
			end
			3'b011:
			begin
			A = 1'b1;
			B = 1'b1;
			end
			3'b100:
			begin
			A = 1'b0;
			B = 1'b0;
			end
			3'b101:
			begin
			A = 1'b1;
			B = 1'b0;
			end
			3'b110:
			begin
			A = 1'b0;
			B = 1'b0;
			end
			3'b111:
			begin
			A = 1'b1;
			B = 1'b0;
			end
		endcase
	end
	
	always@(*) begin
		case({A,B,X})
			3'b000:
			begin
			Y = 1'b0;
			end
			3'b001:
			begin
			Y = 1'b0;
			end
			3'b010:
			begin
			Y = 1'b1;
			end
			3'b011:
			begin
			Y = 1'b0;
			end
			3'b100:
			begin
			Y = 1'b1;
			end
			3'b101:
			begin
			Y = 1'b0;
			end
			3'b110:
			begin
			Y = 1'b1;
			end
			3'b111:
			begin
			Y = 1'b0;
			end
		endcase
	end
endmodule