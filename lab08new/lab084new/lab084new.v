module lab084new(X,T,clock,Q1,Q0);
	input X,T,clock;
	output Q1,Q0;
	reg Q1,Q0;
	
	always@(posedge clock) begin
		case({Q1,Q0})
			2'b00:
			begin
				if(X==0) begin
					Q1 <= 1'b0;
					Q0 <= 1'b1;
				end
				else begin
					Q1 <= 1'b0;
					Q0 <= 1'b0;
				end
			end
			2'b01:
			begin
				if(T==0) begin
					Q1 <= 1'b0;
					Q0 <= 1'b1;
				end
				else begin
					Q1 <= 1'b1;
					Q0 <= 1'b0;
				end
			end
			2'b10:
			begin
				Q1 <= 1'b1;
				Q0 <= 1'b1;
			end
			2'b11:
			begin
				Q1 <= 1'b0;
				Q0 <= 1'b0;
			end
		endcase
	end
endmodule