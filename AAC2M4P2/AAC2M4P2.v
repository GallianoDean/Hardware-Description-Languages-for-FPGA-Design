module RAM128x32

#(

parameter Data_width = 32, //# of bits in word

Addr_width = 7 // # of address bits

)

( //ports

input wire clk,

input wire we,

input wire [(Addr_width-1):0] address,

input wire [(Data_width-1):0] d,

output wire [(Data_width-1):0] q

);

reg [31:0]MEMORY[2**7-1:0];

always@(posedge clk)

begin

if(we)

MEMORY[address]<=d;

else

MEMORY[address]<=32'hxxxxxxxx;

end

assign q=MEMORY[address];

endmodule
