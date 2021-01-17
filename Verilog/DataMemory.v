module DataMemory(clk, MemWrite, ALUResult, WriteData, ReadData);
input clk,MemWrite;
input [31:0] ALUResult, WriteData;
output [31:0] ReadData;
integer i; 

reg [31:0] RAM[31:0];

initial
begin
for (i = 0; i < 31; i = i + 1) 
begin
 RAM[i] <= 0; 
end
end

assign ReadData = RAM[ALUResult[31:2]]; // word aligned

always@(posedge clk)
if (MemWrite) RAM[ALUResult[31:2]] <= WriteData;
endmodule
