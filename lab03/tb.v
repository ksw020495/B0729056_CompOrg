/*******************************************************************************
 *
 * simulation source: [tb.v]
 *
 ******************************************************************************/

//`define SIM_CYCLE 'h400000000

//
// small value for testing
//
`define SIM_CYCLE 5000
//`timescale 100s/1s
module tb;
reg   Load;
reg			CLK;
reg		[3:0]	state;
reg		  I0;
reg		  I1;
reg		  I2;
reg		 	I3;
reg		 	I4;
reg		 	I5;
reg		 	I6;
reg		 	I7;
wire   A0;
wire   A1;
wire	  A2;
wire	  A3;
wire	 	A4;
wire	 	A5;
wire	 	A6;
wire	 	A7;


initial begin
  state=4'b0000;
  Load = 0;
  I0 = 0;
  I1 = 0;
  I2 = 0;
  I3 = 0;
  I4 = 0;
  I5 = 0;
  I6 = 0;
  I7 = 0;
  #30
    I0<=1;     I1<=0;     I2<=1;     I3<=0; 
  #40
    I4<=0;     I5<=1;     I6<=0;     I7<=1;
  #40
    Load<=1;
  #40  
    Load<=0;
  #40
    I0<=1;     I1<=1;     I2<=1;     I3<=0;
  #40
    I4<=0;     I5<=0;     I6<=1;     I7<=0;
  #40
    Load<=1;
  #40  
    Load<=0;
end
always begin
  //@(posedge clk);
    # 20 CLK = 1; 
    # 20 CLK = ~CLK;
end
lab03 m(
  .I0(I0),
  .I1(I1),
  .I2(I2),
  .I3(I3),
  .I4(I4),
  .I5(I5),
  .I6(I6),
  .I7(I7),
  .CLK(CLK),
  .Load(Load),
  .A0(A0),
  .A1(A1),
  .A2(A2),
  .A3(A3),
  .A4(A4),
  .A5(A5),
  .A6(A6),
  .A7(A7)
);
endmodule


