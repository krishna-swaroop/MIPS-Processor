// Decription of the ALU Decoder in the Control Module
// Sets the ALU operation

module aludec( input [5:0] funct,
               input [1:0] aluop,
               output reg [2:0] alucontrol);
  always@(*)
    case(aluop)
      2b00: alucontrol <= 3b010; // add
      2b01: alucontrol <= 3b110; // sub
      default: case(funct) // RTYPE
                 6b100000: alucontrol <= 3b010; // ADD
                 6b100010: alucontrol <= 3b110; // SUB
                 6b100100: alucontrol <= 3b000; // AND
                 6b100101: alucontrol <= 3b001; // OR
                 6b101010: alucontrol <= 3b111; // SLT (Shift left)
                 default: alucontrol <= 3bxxx; // ???
               endcase
      endcase
endmodule
      
      
