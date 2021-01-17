module ControlUnit(op, funct, RegWrite, RegDst, ALUSrc, MemWrite, MemtoReg, HalfWord, Shift, ALUControl); 
input [5:0] op, funct; 
output RegWrite, RegDst, ALUSrc, MemWrite, MemtoReg, HalfWord, Shift; 
wire [1:0] ALUOp;
output [2:0] ALUControl;

MainDecoder maindecorder(op, RegWrite, RegDst, ALUSrc, MemWrite, MemtoReg, HalfWord, ALUOp); 

ALUDecoder aludecoder(ALUOp, funct, Shift, ALUControl); 

 endmodule
