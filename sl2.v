// Description of a Shift Left by 2 operation module.

// Essentially multiplies the number by 4
module sl2 (input [31:0] a,
            output [31:0] y);
  // shift left by 2
  assign y  {a[29:01], 2'b00};
endmodule
