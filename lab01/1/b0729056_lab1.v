// Copyright (C) 1991-2010 Altera Corporation
// Your use of Altera Corporation's design tools, logic functions 
// and other software and tools, and its AMPP partner logic 
// functions, and any output files from any of the foregoing 
// (including device programming or simulation files), and any 
// associated documentation or information are expressly subject 
// to the terms and conditions of the Altera Program License 
// Subscription Agreement, Altera MegaCore Function License 
// Agreement, or other applicable license agreement, including, 
// without limitation, that your use is for the sole purpose of 
// programming logic devices manufactured by Altera and sold by 
// Altera or its authorized distributors.  Please refer to the 
// applicable agreement for further details.

// PROGRAM		"Quartus II"
// VERSION		"Version 10.0 Build 218 06/27/2010 SJ Web Edition"
// CREATED		"Fri Sep 27 16:45:15 2019"

module b0729056_lab1(
	Y,
	X,
	clk,
	A,
	B
);


input wire	Y;
input wire	X;
input wire	clk;
output wire	A;
output reg	B;

wire	SYNTHESIZED_WIRE_0;
wire	SYNTHESIZED_WIRE_1;
reg	DFF_inst;

assign	A = DFF_inst;




always@(posedge clk)
begin
	begin
	DFF_inst = SYNTHESIZED_WIRE_0;
	end
end


always@(posedge clk)
begin
	begin
	B = SYNTHESIZED_WIRE_1;
	end
end

assign	SYNTHESIZED_WIRE_0 = X ^ Y;

assign	SYNTHESIZED_WIRE_1 = ~(Y & DFF_inst);


endmodule
