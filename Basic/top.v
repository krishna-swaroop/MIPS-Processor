// Description of top level module
// Contains the processor along with memory module

module top(input  clk, reset,
           output [31:0] writedata, dataadr,
           output memwrite);
  wire [31:0] pc,instr,readdata;
  
  //instantiate processor and memories
  mips mips(clk, reset, pc, instr, memwrite, dataadr, writedata, readdata);
  
  dmem dmem(clk, mem write, dataadr, writedata,readdata);
  
endmodule  
