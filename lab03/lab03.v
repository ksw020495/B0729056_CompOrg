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
// CREATED		"Fri Oct 18 15:26:14 2019"

module lab03(
	I0,
	I1,
	I2,
	I3,
	I4,
	I5,
	I6,
	I7,
	Load,
	CLK,
	A0,
	A1,
	A2,
	A3,
	A4,
	A5,
	A6,
	A7
);


input wire	I0;
input wire	I1;
input wire	I2;
input wire	I3;
input wire	I4;
input wire	I5;
input wire	I6;
input wire	I7;
input wire	Load;
input wire	CLK;
output wire	A0;
output wire	A1;
output wire	A2;
output wire	A3;
output wire	A4;
output wire	A5;
output wire	A6;
output wire	A7;

wire	SYNTHESIZED_WIRE_0;
reg	DFF_inst8;
wire	SYNTHESIZED_WIRE_32;
wire	SYNTHESIZED_WIRE_2;
wire	SYNTHESIZED_WIRE_3;
reg	DFF_inst;
wire	SYNTHESIZED_WIRE_5;
wire	SYNTHESIZED_WIRE_6;
reg	DFF_inst2;
wire	SYNTHESIZED_WIRE_8;
wire	SYNTHESIZED_WIRE_9;
reg	DFF_inst3;
wire	SYNTHESIZED_WIRE_11;
wire	SYNTHESIZED_WIRE_12;
wire	SYNTHESIZED_WIRE_13;
reg	DFF_inst4;
wire	SYNTHESIZED_WIRE_15;
wire	SYNTHESIZED_WIRE_16;
reg	DFF_inst5;
wire	SYNTHESIZED_WIRE_18;
wire	SYNTHESIZED_WIRE_19;
reg	DFF_inst6;
wire	SYNTHESIZED_WIRE_21;
wire	SYNTHESIZED_WIRE_22;
wire	SYNTHESIZED_WIRE_23;
reg	DFF_inst7;
wire	SYNTHESIZED_WIRE_25;
wire	SYNTHESIZED_WIRE_26;
wire	SYNTHESIZED_WIRE_27;
wire	SYNTHESIZED_WIRE_28;
wire	SYNTHESIZED_WIRE_29;
wire	SYNTHESIZED_WIRE_30;
wire	SYNTHESIZED_WIRE_31;

assign	A0 = DFF_inst8;
assign	A1 = DFF_inst;
assign	A2 = DFF_inst2;
assign	A3 = DFF_inst3;
assign	A4 = DFF_inst4;
assign	A5 = DFF_inst5;
assign	A6 = DFF_inst6;
assign	A7 = DFF_inst7;




always@(posedge CLK)
begin
	begin
	DFF_inst = SYNTHESIZED_WIRE_0;
	end
end

assign	SYNTHESIZED_WIRE_3 = DFF_inst8 & SYNTHESIZED_WIRE_32;

assign	SYNTHESIZED_WIRE_2 = I0 & Load;

assign	SYNTHESIZED_WIRE_31 = SYNTHESIZED_WIRE_2 | SYNTHESIZED_WIRE_3;

assign	SYNTHESIZED_WIRE_6 = DFF_inst & SYNTHESIZED_WIRE_32;

assign	SYNTHESIZED_WIRE_5 = I1 & Load;

assign	SYNTHESIZED_WIRE_0 = SYNTHESIZED_WIRE_5 | SYNTHESIZED_WIRE_6;

assign	SYNTHESIZED_WIRE_9 = DFF_inst2 & SYNTHESIZED_WIRE_32;

assign	SYNTHESIZED_WIRE_8 = I2 & Load;

assign	SYNTHESIZED_WIRE_11 = SYNTHESIZED_WIRE_8 | SYNTHESIZED_WIRE_9;

assign	SYNTHESIZED_WIRE_13 = DFF_inst3 & SYNTHESIZED_WIRE_32;


always@(posedge CLK)
begin
	begin
	DFF_inst2 = SYNTHESIZED_WIRE_11;
	end
end

assign	SYNTHESIZED_WIRE_12 = I3 & Load;

assign	SYNTHESIZED_WIRE_21 = SYNTHESIZED_WIRE_12 | SYNTHESIZED_WIRE_13;

assign	SYNTHESIZED_WIRE_16 = DFF_inst4 & SYNTHESIZED_WIRE_32;

assign	SYNTHESIZED_WIRE_15 = I4 & Load;

assign	SYNTHESIZED_WIRE_27 = SYNTHESIZED_WIRE_15 | SYNTHESIZED_WIRE_16;

assign	SYNTHESIZED_WIRE_19 = DFF_inst5 & SYNTHESIZED_WIRE_32;

assign	SYNTHESIZED_WIRE_18 = I5 & Load;

assign	SYNTHESIZED_WIRE_28 = SYNTHESIZED_WIRE_18 | SYNTHESIZED_WIRE_19;

assign	SYNTHESIZED_WIRE_23 = DFF_inst6 & SYNTHESIZED_WIRE_32;

assign	SYNTHESIZED_WIRE_22 = I6 & Load;


always@(posedge CLK)
begin
	begin
	DFF_inst3 = SYNTHESIZED_WIRE_21;
	end
end

assign	SYNTHESIZED_WIRE_29 = SYNTHESIZED_WIRE_22 | SYNTHESIZED_WIRE_23;

assign	SYNTHESIZED_WIRE_26 = DFF_inst7 & SYNTHESIZED_WIRE_32;

assign	SYNTHESIZED_WIRE_25 = I7 & Load;

assign	SYNTHESIZED_WIRE_30 = SYNTHESIZED_WIRE_25 | SYNTHESIZED_WIRE_26;

assign	SYNTHESIZED_WIRE_32 =  ~Load;


always@(posedge CLK)
begin
	begin
	DFF_inst4 = SYNTHESIZED_WIRE_27;
	end
end


always@(posedge CLK)
begin
	begin
	DFF_inst5 = SYNTHESIZED_WIRE_28;
	end
end


always@(posedge CLK)
begin
	begin
	DFF_inst6 = SYNTHESIZED_WIRE_29;
	end
end


always@(posedge CLK)
begin
	begin
	DFF_inst7 = SYNTHESIZED_WIRE_30;
	end
end


always@(posedge CLK)
begin
	begin
	DFF_inst8 = SYNTHESIZED_WIRE_31;
	end
end


endmodule
