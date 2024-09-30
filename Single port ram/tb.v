`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/26/2024 11:49:47 AM
// Design Name: 
// Module Name: tb
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


module tb();
reg clk,rst,en,wr_rd;
reg [7:0] addr;
reg [3:0] data_in;
wire [3:0] data_out;

single_port_ram uut(clk,rst,addr,data_in,data_out,wr_rd,en);

always begin
#5 clk=~clk;
end
initial begin
clk=0;
en=0;
#15 en=0;
#15 en=1;rst=0;data_in=4'b0001;addr=8'hAb;
#15 data_in=4'b0010;addr=8'hBA;
#40 rst=1;addr=8'hBA;
#15 addr=8'hAB;
#15

$stop;

end
endmodule
