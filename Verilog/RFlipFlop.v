module RFlipFlop #(parameter WIDTH= 5) ( clk, reset, D, Q);
input clk, reset; 
input  [WIDTH-1:0] D; 
output reg [WIDTH-1:0] Q; 

always@(posedge clk, posedge reset)
if (reset) 
 Q <= 0; 
else 
 Q <= D; 

endmodule
