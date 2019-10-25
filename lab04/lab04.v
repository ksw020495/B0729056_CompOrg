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
// CREATED		"Fri Oct 25 16:22:06 2019"

module lab04(
	Load,
	Count,
	D0,
	D1,
	D2,
	D3,
	clk,
	clean,
	Q0,
	Q1,
	Q2,
	Q3,
	CO
);


input wire	Load;
input wire	Count;
input wire	D0;
input wire	D1;
input wire	D2;
input wire	D3;
input wire	clk;
input wire	clean;
output wire	Q0;
output wire	Q1;
output wire	Q2;
output wire	Q3;
output wire	CO;

wire	SYNTHESIZED_WIRE_29;
reg	SYNTHESIZED_WIRE_30;
wire	SYNTHESIZED_WIRE_31;
reg	SYNTHESIZED_WIRE_32;
wire	SYNTHESIZED_WIRE_33;
reg	SYNTHESIZED_WIRE_34;
wire	SYNTHESIZED_WIRE_35;
reg	SYNTHESIZED_WIRE_36;
wire	SYNTHESIZED_WIRE_37;
wire	SYNTHESIZED_WIRE_9;
wire	SYNTHESIZED_WIRE_10;
wire	SYNTHESIZED_WIRE_11;
wire	SYNTHESIZED_WIRE_12;
wire	SYNTHESIZED_WIRE_13;
wire	SYNTHESIZED_WIRE_15;
wire	SYNTHESIZED_WIRE_17;
wire	SYNTHESIZED_WIRE_19;
wire	SYNTHESIZED_WIRE_21;
wire	SYNTHESIZED_WIRE_22;
wire	SYNTHESIZED_WIRE_23;
wire	SYNTHESIZED_WIRE_24;
wire	SYNTHESIZED_WIRE_25;
wire	SYNTHESIZED_WIRE_26;
wire	SYNTHESIZED_WIRE_27;
wire	SYNTHESIZED_WIRE_28;

assign	Q0 = SYNTHESIZED_WIRE_30;
assign	Q1 = SYNTHESIZED_WIRE_32;
assign	Q2 = SYNTHESIZED_WIRE_34;
assign	Q3 = SYNTHESIZED_WIRE_36;



assign	SYNTHESIZED_WIRE_29 =  ~Load;

assign	SYNTHESIZED_WIRE_31 = SYNTHESIZED_WIRE_29 & Count;

assign	SYNTHESIZED_WIRE_33 = SYNTHESIZED_WIRE_30 & SYNTHESIZED_WIRE_31;

assign	SYNTHESIZED_WIRE_35 = SYNTHESIZED_WIRE_32 & SYNTHESIZED_WIRE_33;

assign	SYNTHESIZED_WIRE_37 = SYNTHESIZED_WIRE_34 & SYNTHESIZED_WIRE_35;

assign	CO = SYNTHESIZED_WIRE_36 & SYNTHESIZED_WIRE_37;

assign	SYNTHESIZED_WIRE_13 = SYNTHESIZED_WIRE_31 ^ SYNTHESIZED_WIRE_30;

assign	SYNTHESIZED_WIRE_15 = SYNTHESIZED_WIRE_33 ^ SYNTHESIZED_WIRE_32;

assign	SYNTHESIZED_WIRE_17 = SYNTHESIZED_WIRE_35 ^ SYNTHESIZED_WIRE_34;

assign	SYNTHESIZED_WIRE_19 = SYNTHESIZED_WIRE_37 ^ SYNTHESIZED_WIRE_36;


always@(posedge clk or negedge clean)
begin
if (!clean)
	begin
	SYNTHESIZED_WIRE_30 = 0;
	end
else
	begin
	SYNTHESIZED_WIRE_30 = SYNTHESIZED_WIRE_9;
	end
end


always@(posedge clk or negedge clean)
begin
if (!clean)
	begin
	SYNTHESIZED_WIRE_32 = 0;
	end
else
	begin
	SYNTHESIZED_WIRE_32 = SYNTHESIZED_WIRE_10;
	end
end


always@(posedge clk or negedge clean)
begin
if (!clean)
	begin
	SYNTHESIZED_WIRE_34 = 0;
	end
else
	begin
	SYNTHESIZED_WIRE_34 = SYNTHESIZED_WIRE_11;
	end
end


always@(posedge clk or negedge clean)
begin
if (!clean)
	begin
	SYNTHESIZED_WIRE_36 = 0;
	end
else
	begin
	SYNTHESIZED_WIRE_36 = SYNTHESIZED_WIRE_12;
	end
end

assign	SYNTHESIZED_WIRE_22 = Load & D0;

assign	SYNTHESIZED_WIRE_21 = SYNTHESIZED_WIRE_13 & SYNTHESIZED_WIRE_29;

assign	SYNTHESIZED_WIRE_24 = Load & D1;

assign	SYNTHESIZED_WIRE_23 = SYNTHESIZED_WIRE_15 & SYNTHESIZED_WIRE_29;

assign	SYNTHESIZED_WIRE_26 = Load & D2;

assign	SYNTHESIZED_WIRE_25 = SYNTHESIZED_WIRE_17 & SYNTHESIZED_WIRE_29;

assign	SYNTHESIZED_WIRE_28 = Load & D3;

assign	SYNTHESIZED_WIRE_27 = SYNTHESIZED_WIRE_19 & SYNTHESIZED_WIRE_29;

assign	SYNTHESIZED_WIRE_9 = SYNTHESIZED_WIRE_21 | SYNTHESIZED_WIRE_22;

assign	SYNTHESIZED_WIRE_10 = SYNTHESIZED_WIRE_23 | SYNTHESIZED_WIRE_24;

assign	SYNTHESIZED_WIRE_11 = SYNTHESIZED_WIRE_25 | SYNTHESIZED_WIRE_26;

assign	SYNTHESIZED_WIRE_12 = SYNTHESIZED_WIRE_27 | SYNTHESIZED_WIRE_28;


endmodule
