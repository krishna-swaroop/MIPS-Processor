// Description of the Main Decoder in the Controller module

module maindec(input [5:0] op,
               output memtoreg, memwrite,
               output branch, alusrc,
               output regdst, regwrite,
               output jump,
               output [1:0] aluop);
  reg [8:0] controls; // :) I used this just to piss Kshitij off
  
  assign {regwrite, regdst, alusrc, branch, memwrite, memtoreg, jump, aluop} = controls;
  
  always@(*)
    case(op)
      6b000000: controls <= 9b110000010; //Rtype Instruction
      6b100011: controls <= 9b101001000; //Load Word
      6b101011: controls <= 9b001010000; //Store Word
      6b000100: controls <= 9b000100001; //Branch if equal
      6b001000: controls <= 9b101000000; //ADD Immediate
      6b000010: controls <= 9b000000100; //Jump
      default: controls <= 9bxxxxxxxxx; //???
    endcase
endmodule    
      
