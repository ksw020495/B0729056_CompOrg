module arthimetic(S,Cin,A,B,aout,V,C);
	input [1:0] S;
	input Cin;
	input [7:0] A,B;
	output [7:0] aout;
	output V,C;
	
	reg carryin;
	reg [7:0] adderA,adderB;
	
	always@(*) begin
		case({S,Cin})
		3'b000:
		begin
			adderA=A;
			adderB=8'b00000000;
			carryin=1'b0;
		end
		3'b001:
		begin
			adderA=A;
			adderB=8'b00000000;
			carryin=1'b1;
		end
		3'b010:
		begin
			adderA=A;
			adderB=B;
			carryin=1'b0;
		end
		3'b011:
		begin
			adderA=A;
			adderB=B;
			carryin=1'b1;
		end
		3'b100:
		begin
			adderA=A;
			adderB=8'b11111111-B;
			carryin=1'b0;
		end
		3'b101:
		begin
			adderA=A;
			adderB=8'b11111111-B;
			carryin=1'b1;
		end
		3'b110:
		begin
			adderA=A;
			adderB=8'b11111111;
			carryin=1'b0;
		end
		3'b111:
		begin
			adderA=A;
			adderB=8'b00000000;
			carryin=1'b0;
		end
		endcase
	end
	
	adder ADDER(
		.carry_in(carryin),
		.a(adderA),
		.b(adderB),
		.sum(aout),
		.carry_out(C)
	);
	
	assign V = (adderA[7]&adderB[7]&~aout[7])|(~adderA[7]&~adderB[7]&aout[7]);
endmodule