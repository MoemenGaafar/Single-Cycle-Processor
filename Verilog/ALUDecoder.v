module ALUDecoder(ALUOp, funct, Shift, ALUControl); 
input [1:0] ALUOp; 
input[5:0] funct; 
output reg [2:0] ALUControl;
output reg Shift;

always@(*)
begin 
case(funct)
 6'b000000: Shift <= 1'b1;
 default: Shift <= 1'b0;
endcase

case(ALUOp) 
 2'b00: ALUControl <= 3'b010; 
 2'b01: ALUControl <= 3'b110; 
 default: 
   case(funct) 
   6'b100000: ALUControl <= 3'b010;  
   6'b100010: ALUControl <= 3'b110;  
   6'b100100: ALUControl <= 3'b000;  
   6'b100101: ALUControl <= 3'b001; 
   6'b101010: ALUControl <= 3'b111; 
   6'b000000: ALUControl <= 3'b011;
   default: ALUControl <= 3'bxxx; //when it is not of the above
   endcase 
endcase 
end 
endmodule
