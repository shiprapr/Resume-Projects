`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/26/2024 11:20:59 AM
// Design Name: 
// Module Name: single_port_ram
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module single_port_ram(clk,rst,addr,data_in,data_out,wr_rd,en);
input clk,rst,en,wr_rd;
input [7:0] addr;
input [3:0] data_in;
output reg [3:0] data_out;

reg [3:0]mem[7:0];

always @(posedge clk)
begin
    if (~en)
        data_out<=4'b0000;
    else  begin
        if (rst)
            mem[addr]<=0; 
        else begin
        if (~wr_rd)
            data_out<=mem[addr];
        if(wr_rd) 
            mem[addr]<=data_in;
         end
    end
end
endmodule
