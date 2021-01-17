module InstrMemory(PC,Instr);
output[31:0] Instr;
input[4:0] PC;
reg [31:0] RAM[31:0];

initial
begin 
RAM[0]= 32'h20020005; 
RAM[1]= 32'h2003000c; 
RAM[2]= 32'h2067fff7; 
RAM[3]= 32'h00e22025; 
RAM[4]= 32'h00642824;
RAM[5]= 32'h00a42820;
RAM[6]= 32'h0064202a; 
RAM[7]= 32'h00e23822; 
RAM[8]= 32'h00023080;
RAM[9]= 32'hac660044;
RAM[10]= 32'h8c020050; 
RAM[11]= 32'h000200a0; 
RAM[12]= 32'h84020050; 
RAM[13]= 32'h000200a0; 
end

assign Instr = RAM[PC]; // word aligned
endmodule


