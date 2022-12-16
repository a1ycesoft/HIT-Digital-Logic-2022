`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/11/21 02:12:32
// Design Name: 
// Module Name: mod10_sim
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
module display_sim();
reg clk=0;
reg [3:0] num;
wire [6:0] out;
display u1(clk,num,0,out);
initial
begin
    clk<=0;
    num<=4'b0000;
end
always #5 
begin
clk<=~clk;
num<=num+4'b0001;
end
endmodule
