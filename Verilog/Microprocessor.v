module Microprocessor(clk, reset); 

input clk, reset; 

wire [31:0] Instr; 
wire RegWrite, RegDst, ALUSrc, MemtoReg, MemWrite, HalfWord, Shift; 
wire [2:0] ALUControl;
 

ControlUnit controlunit(Instr[31:26], Instr[5:0], RegWrite, RegDst, ALUSrc, MemWrite, MemtoReg, HalfWord, Shift, ALUControl); 
Datapath datapath(clk, reset, RegWrite, RegDst, ALUSrc, MemWrite, MemtoReg, HalfWord, Shift, ALUControl, Instr); 

endmodule 
