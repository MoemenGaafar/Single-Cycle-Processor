module RegisterFile (clk, A1, A2, A3, RD1, RD2, WE3, WD3); 
input clk; 
input [4:0] A1, A2, A3; 
output[31:0] RD1, RD2; 
input WE3; 
input [31:0] WD3; 

reg [31:0] registerfile[31:0]; //First is wordlength, Second is number of registers
integer i; 

initial
begin
 registerfile[0] <= 0; 
end
 

always@(posedge clk)
begin
if (WE3) 
registerfile[A3] <= WD3;
end

assign RD1= (A1!=0)? registerfile[A1]:0; 
assign RD2= (A2!=0)? registerfile[A2]:0;  

endmodule


