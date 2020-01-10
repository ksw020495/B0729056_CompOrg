module registerwithclock
#(parameter WIDTH=8)
(
    input                clk,
    input  [WIDTH-1: 0]  load_data,
    output [WIDTH-1: 0]  data
);

reg [WIDTH-1: 0]  d;

always @(posedge clk) begin
	d <= load_data;
end

assign data = d;

endmodule
