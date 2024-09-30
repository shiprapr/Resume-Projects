`timescale 1ns / 1ps



module dual_port_ram(clk,cs,rd,wr,addr,dataIn,dataOut);
input clk,cs,rd,wr;
input [7:0]addr;
input [3:0]dataIn;
output reg[3:0]dataOut;

reg [3:0] mem[7:0];

always @(posedge clk)
begin 
if (~cs)
dataOut=4'b0000;
else begin
if (wr)
mem[addr]<=dataIn;
if (rd)
dataOut<=mem[addr];
end 
end

endmodule
