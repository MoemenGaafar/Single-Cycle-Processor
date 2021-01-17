module MainDecoder(op, RegWrite, RegDst, ALUSrc, MemWrite, MemtoReg, HalfWord, ALUOp); 
input [5:0] op; 
output reg RegWrite, RegDst, ALUSrc, MemWrite, MemtoReg, HalfWord; 
output reg [1:0] ALUOp; 


always@(*)
begin
 case(op) 
6'b000000: {RegWrite, RegDst, ALUSrc, MemWrite, MemtoReg, HalfWord, ALUOp} <= 8'b11000010 ; // RTYPE 
6'b100011: {RegWrite, RegDst, ALUSrc, MemWrite, MemtoReg, HalfWord, ALUOp} <= 8'b10101000; // LW 
6'b101011: {RegWrite, RegDst, ALUSrc, MemWrite, MemtoReg, HalfWord, ALUOp} <= 8'b00110000; // SW 
6'b001000: {RegWrite, RegDst, ALUSrc, MemWrite, MemtoReg, HalfWord, ALUOp} <= 8'b10100000; // ADDI 
6'b100001: {RegWrite, RegDst, ALUSrc, MemWrite, MemtoReg, HalfWord, ALUOp} <= 8'b10101100; // LH 
default: {RegWrite, RegDst, ALUSrc, MemWrite, MemtoReg,HalfWord, ALUOp} <= 8'bxxxxxxxx; 
endcase
end

endmodule
