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
// CREATED		"Fri Sep 27 16:35:26 2019"

module block1(
	PS,
	LS,
	RS,
	RR,
	PL,
	LL,
	RL
);


input wire	PS;
input wire	LS;
input wire	RS;
input wire	RR;
output wire	PL;
output wire	LL;
output wire	RL;

wire	SYNTHESIZED_WIRE_0;
wire	SYNTHESIZED_WIRE_1;
wire	SYNTHESIZED_WIRE_2;
wire	SYNTHESIZED_WIRE_3;
wire	SYNTHESIZED_WIRE_4;
wire	SYNTHESIZED_WIRE_5;
wire	SYNTHESIZED_WIRE_11;
wire	SYNTHESIZED_WIRE_7;
wire	SYNTHESIZED_WIRE_8;
wire	SYNTHESIZED_WIRE_10;

assign	PL = PS;



assign	SYNTHESIZED_WIRE_8 =  ~RS;

assign	SYNTHESIZED_WIRE_3 = LS & RS & SYNTHESIZED_WIRE_0;

assign	SYNTHESIZED_WIRE_10 = SYNTHESIZED_WIRE_1 | SYNTHESIZED_WIRE_2;

assign	SYNTHESIZED_WIRE_7 = SYNTHESIZED_WIRE_3 | SYNTHESIZED_WIRE_4;

assign	SYNTHESIZED_WIRE_4 = SYNTHESIZED_WIRE_5 & RS;

assign	RL = SYNTHESIZED_WIRE_11 & SYNTHESIZED_WIRE_7;

assign	SYNTHESIZED_WIRE_0 =  ~RR;

assign	SYNTHESIZED_WIRE_5 =  ~LS;

assign	SYNTHESIZED_WIRE_11 =  ~PS;

assign	SYNTHESIZED_WIRE_2 = LS & SYNTHESIZED_WIRE_8;

assign	LL = SYNTHESIZED_WIRE_11 & SYNTHESIZED_WIRE_10;

assign	SYNTHESIZED_WIRE_1 = LS & RS & RR;


endmodule
