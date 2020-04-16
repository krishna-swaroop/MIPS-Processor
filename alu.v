// Description of ALU module
// Does add, sub, and, or, SLT

module alu(input  [31:0] srca, srcb,
           input  [2:0]  alucontrol,
           output [31:0] aluout,
           output zero);
  reg  [31:0] alu_result;
  wire tmp;
  
  assign aluout = alu_result;
  assign zero   =  tmp;
  
  always@(*)
    begin
      if(aluresult = 0)
        tmp=1;
      else
        tmp=0;
      end
    end 
  
  
  
  always@(*)
    case(alucontrol)
      3'b010: alu_result = srca + srcb;
      3'b110: alu_result = srca - srcb;
      3'b000: alu_result = srca & srcb;
      3'b001: alu_result = srca | srcb;
      3'b111: alu_result = (srca < srcb) ? 1 : 0;
      default: alu_result = srca + srcb;
    endcase
endmodule

    
           
