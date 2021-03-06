module Adder#(parameter WIDTH= 32)(A, B, Cin,  Y);
input [WIDTH-1:0] A, B; 
output [WIDTH-1:0] Y; 
input Cin;

assign Y= A + B + {{(WIDTH-1){1'b0}}, Cin};
endmodule
