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
// CREATED		"Sat Oct 05 16:58:00 2019"

module b0729056_lab02(
	X0,
	X1,
	X2,
	X3,
	clk,
	clean,
	A0,
	A1,
	A2,
	A3,
	L,
	A4u
);


input wire	X0;
input wire	X1;
input wire	X2;
input wire	X3;
input wire	clk;
input wire	clean;
output wire	A0;
output wire	A1;
output wire	A2;
output wire	A3;
output wire	L;
output wire	A4u;

wire	SYNTHESIZED_WIRE_0;
wire	SYNTHESIZED_WIRE_1;
wire	SYNTHESIZED_WIRE_2;
wire	SYNTHESIZED_WIRE_3;
wire	SYNTHESIZED_WIRE_4;
reg	SYNTHESIZED_WIRE_36;
reg	SYNTHESIZED_WIRE_37;
reg	SYNTHESIZED_WIRE_38;
reg	SYNTHESIZED_WIRE_39;
wire	SYNTHESIZED_WIRE_5;
wire	SYNTHESIZED_WIRE_6;
wire	SYNTHESIZED_WIRE_7;
wire	SYNTHESIZED_WIRE_40;
reg	SYNTHESIZED_WIRE_41;
wire	SYNTHESIZED_WIRE_9;
wire	SYNTHESIZED_WIRE_10;
wire	SYNTHESIZED_WIRE_11;
wire	SYNTHESIZED_WIRE_12;
wire	SYNTHESIZED_WIRE_13;
wire	SYNTHESIZED_WIRE_14;
wire	SYNTHESIZED_WIRE_15;
wire	SYNTHESIZED_WIRE_17;
wire	SYNTHESIZED_WIRE_18;
wire	SYNTHESIZED_WIRE_19;
wire	SYNTHESIZED_WIRE_20;
wire	SYNTHESIZED_WIRE_21;
wire	SYNTHESIZED_WIRE_22;
wire	SYNTHESIZED_WIRE_24;
wire	SYNTHESIZED_WIRE_25;
wire	SYNTHESIZED_WIRE_27;
wire	SYNTHESIZED_WIRE_28;
wire	SYNTHESIZED_WIRE_30;
wire	SYNTHESIZED_WIRE_31;
wire	SYNTHESIZED_WIRE_33;
wire	SYNTHESIZED_WIRE_34;
wire	SYNTHESIZED_WIRE_35;

assign	A0 = SYNTHESIZED_WIRE_41;
assign	A1 = SYNTHESIZED_WIRE_37;
assign	A2 = SYNTHESIZED_WIRE_39;
assign	A3 = SYNTHESIZED_WIRE_38;
assign	A4u = SYNTHESIZED_WIRE_36;




always@(posedge clk or negedge clean)
begin
if (!clean)
	begin
	SYNTHESIZED_WIRE_41 = 0;
	end
else
	begin
	SYNTHESIZED_WIRE_41 = SYNTHESIZED_WIRE_0;
	end
end


always@(posedge clk or negedge clean)
begin
if (!clean)
	begin
	SYNTHESIZED_WIRE_37 = 0;
	end
else
	begin
	SYNTHESIZED_WIRE_37 = SYNTHESIZED_WIRE_1;
	end
end


always@(posedge clk or negedge clean)
begin
if (!clean)
	begin
	SYNTHESIZED_WIRE_39 = 0;
	end
else
	begin
	SYNTHESIZED_WIRE_39 = SYNTHESIZED_WIRE_2;
	end
end


always@(posedge clk or negedge clean)
begin
if (!clean)
	begin
	SYNTHESIZED_WIRE_38 = 0;
	end
else
	begin
	SYNTHESIZED_WIRE_38 = SYNTHESIZED_WIRE_3;
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
	SYNTHESIZED_WIRE_36 = SYNTHESIZED_WIRE_4;
	end
end

assign	L =  ~SYNTHESIZED_WIRE_36;

assign	SYNTHESIZED_WIRE_33 = SYNTHESIZED_WIRE_37 | SYNTHESIZED_WIRE_38 | SYNTHESIZED_WIRE_36 | SYNTHESIZED_WIRE_39;

assign	SYNTHESIZED_WIRE_5 = X3 | X2;

assign	SYNTHESIZED_WIRE_10 = SYNTHESIZED_WIRE_39 & SYNTHESIZED_WIRE_5;

assign	SYNTHESIZED_WIRE_6 = X3 | X0;

assign	SYNTHESIZED_WIRE_11 = SYNTHESIZED_WIRE_38 & SYNTHESIZED_WIRE_6;

assign	SYNTHESIZED_WIRE_14 = SYNTHESIZED_WIRE_36 & SYNTHESIZED_WIRE_7;

assign	SYNTHESIZED_WIRE_7 =  ~SYNTHESIZED_WIRE_40;

assign	SYNTHESIZED_WIRE_19 = SYNTHESIZED_WIRE_41 & X1;

assign	SYNTHESIZED_WIRE_15 = SYNTHESIZED_WIRE_9 | SYNTHESIZED_WIRE_10 | SYNTHESIZED_WIRE_11 | SYNTHESIZED_WIRE_12;

assign	SYNTHESIZED_WIRE_0 = SYNTHESIZED_WIRE_13 | SYNTHESIZED_WIRE_14 | SYNTHESIZED_WIRE_15;

assign	SYNTHESIZED_WIRE_18 = X1 | SYNTHESIZED_WIRE_40;

assign	SYNTHESIZED_WIRE_13 =  ~SYNTHESIZED_WIRE_17;

assign	SYNTHESIZED_WIRE_22 = SYNTHESIZED_WIRE_37 & SYNTHESIZED_WIRE_18;

assign	SYNTHESIZED_WIRE_20 = X1 & SYNTHESIZED_WIRE_39;

assign	SYNTHESIZED_WIRE_21 = X1 & SYNTHESIZED_WIRE_38;

assign	SYNTHESIZED_WIRE_1 = SYNTHESIZED_WIRE_19 | SYNTHESIZED_WIRE_20 | SYNTHESIZED_WIRE_21 | SYNTHESIZED_WIRE_22;

assign	SYNTHESIZED_WIRE_25 = SYNTHESIZED_WIRE_37 & X3;

assign	SYNTHESIZED_WIRE_24 = SYNTHESIZED_WIRE_39 & SYNTHESIZED_WIRE_40;

assign	SYNTHESIZED_WIRE_2 = SYNTHESIZED_WIRE_24 | SYNTHESIZED_WIRE_25;

assign	SYNTHESIZED_WIRE_28 = SYNTHESIZED_WIRE_39 & X0;

assign	SYNTHESIZED_WIRE_27 = SYNTHESIZED_WIRE_38 & SYNTHESIZED_WIRE_40;

assign	SYNTHESIZED_WIRE_3 = SYNTHESIZED_WIRE_27 | SYNTHESIZED_WIRE_28;

assign	SYNTHESIZED_WIRE_31 = SYNTHESIZED_WIRE_38 & X2;

assign	SYNTHESIZED_WIRE_30 = SYNTHESIZED_WIRE_36 & SYNTHESIZED_WIRE_40;

assign	SYNTHESIZED_WIRE_4 = SYNTHESIZED_WIRE_30 | SYNTHESIZED_WIRE_31;

assign	SYNTHESIZED_WIRE_34 = SYNTHESIZED_WIRE_40 | X2 | X3 | X0;

assign	SYNTHESIZED_WIRE_17 = SYNTHESIZED_WIRE_33 | SYNTHESIZED_WIRE_41;

assign	SYNTHESIZED_WIRE_40 = ~(X0 | X2 | X1 | X3);

assign	SYNTHESIZED_WIRE_9 = SYNTHESIZED_WIRE_41 & SYNTHESIZED_WIRE_34;

assign	SYNTHESIZED_WIRE_35 = X2 | X0;

assign	SYNTHESIZED_WIRE_12 = SYNTHESIZED_WIRE_37 & SYNTHESIZED_WIRE_35;


endmodule
