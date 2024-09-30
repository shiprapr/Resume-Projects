`timescale 1ns / 1ps



module tb();
reg clk,cs,wr,rd;
reg [3:0] dataIn;
reg [7:0] addr;
wire [3:0]dataOut;

dual_port_ram uut(clk,cs,rd,wr,addr,dataIn,dataOut);


initial begin
clk=0;
cs=0;wr=0;rd=0;addr=0;dataIn=0;

#15
cs=1;
rd=0;
wr=1; 
addr=4'b0001;
dataIn=4'b1111;

#15
addr=4'b0010;
dataIn=4'b1110;

#15
addr=4'b0011;
dataIn=4'b1101;

#15
wr=0; rd=1;
#5
addr=4'b0001;
#5
addr=4'b0010;
#5
addr=4'b0011;
end
always clk= #5 ~clk;

endmodule
