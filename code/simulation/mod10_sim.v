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


module mod10_sim();
reg clk;
reg reset;
wire [3:0] out;
counter u1(clk,reset,1,out);
initial
begin
    reset=1;
    clk=0;
end
always #5 clk<=~clk;
always #200 reset =~reset;

endmodule
