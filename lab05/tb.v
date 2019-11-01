/*******************************************************************************
 *
 * simulation source: [tb.v]
 *
 ******************************************************************************/

//`define SIM_CYCLE 'h400000000

//
// small value for testing
//
`define CYCLE 5000
//`timescale 1ms/1us
module tb;
reg			clk;
reg		[3:0]	state;
reg   Count;
reg   clean;
wire   Q0A;	
wire   Q0B;	
wire   Q0C;	
wire   Q0D;
wire   Q0E;
wire   Q0F;
wire   Q0G;
wire   Q1A;	
wire   Q1B;	
wire   Q1C;	
wire   Q1D;
wire   Q1E;
wire   Q1F;
wire   Q1G;	
wire   Q2A;	
wire   Q2B;	
wire   Q2C;	
wire   Q2D;
wire   Q2E;
wire   Q2F;
wire   Q2G;	
wire   Q3A;	
wire   Q3B;	
wire   Q3C;	
wire   Q3D;
wire   Q3E;
wire   Q3F;
wire   Q3G;		
  
initial begin
  state=4'b0000;
  Count = 0;
  clean = 0;
  #30
    Count= 1;
    clean = 1; 
end
always begin
  //@(posedge clk);
    # 20 clk = 1; 
    # 20 clk = ~clk;
end
lab05 m(
  .clk(clk),
  .Count(Count),
  .Q0A(Q0A),
  .Q0B(Q0B),
  .Q0C(Q0C),
  .Q0D(Q0D),
  .Q0E(Q0E),
  .Q0F(Q0F),
  .Q0G(Q0G),
  .Q1A(Q1A),
  .Q1B(Q1B),
  .Q1C(Q1C),
  .Q1D(Q1D),
  .Q1E(Q1E),
  .Q1F(Q1F),
  .Q1G(Q1G),
  .Q2A(Q2A),
  .Q2B(Q2B),
  .Q2C(Q2C),
  .Q2D(Q2D),
  .Q2E(Q2E),
  .Q2F(Q2F),
  .Q2G(Q2G),
  .Q3A(Q3A),
  .Q3B(Q3B),
  .Q3C(Q3C),
  .Q3D(Q3D),
  .Q3E(Q3E),
  .Q3F(Q3F),
  .Q3G(Q3G)
);
endmodule
