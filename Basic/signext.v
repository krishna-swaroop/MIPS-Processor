// Description of Sign Extension Module

// Sign extends a 16 bit number to 32 bits by filling the rest of the bits with MSB of the 16 bit number

module signext (input [15:0] a,
                output [31:0] y);
  assign y = {{16{a[15]}}, a};
endmodule
