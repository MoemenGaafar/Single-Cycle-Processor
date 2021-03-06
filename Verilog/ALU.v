module ALU(A, B, ALUControl, Y); 
input [31:0] A, B; 
input [2:0]  ALUControl; 
output reg[31:0] Y; 
wire [31:0] S, BB; 

assign BB = (ALUControl[2])? ~B: B; 
Adder sum(A, BB, ALUControl[2], S); 

always@(*)
begin
case(ALUControl[2:0])
3'b000: Y <= A & BB; 
3'b001: Y <= A | BB; 
3'b010: Y <= S; 
3'b011: Y <= B << A;
3'b100: Y <= A & BB; 
3'b101: Y <= A | BB; 
3'b110: Y <= S; 
3'b111: Y <= {31'b0,S[31]}; 
endcase 
end 

endmodule 
