module lab084(X, T, clock, Q1, Q0);

input X;
input T;
input clock;
output Q1;
output Q0;

reg Q1;
reg Q0;

always @(posedge clock) begin
	case(Q1)
		1'b0:
		begin
			case(Q0)
				1'b0:
				begin
					if(X==0)
						Q0 <= 1'b1;
				end
				
				1'b1:
				begin
					if(T==1) begin
						Q1 <= 1'b1;
						Q0 <= 1'b0;
					end
				end
			endcase
		end
		
		1'b1:
		begin
			case(Q0)
				1'b0: Q0 <= 1'b1;
				1'b1:
				begin
					Q0 <= 1'b0;
					Q1 <= 1'b1;
				end
			endcase
		end
	endcase
end

endmodule