`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.04.2019 22:24:06
// Design Name: 
// Module Name: clk_divider
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


module clk_divider(
    input clk,
    output reg clkOut
    );
    reg[25:0] count;//counter upto 50000000
    always@(negedge clk)//negative edge sensitive
    begin
    count <= count+1;
    if(count == 50000000)
    begin
    clkOut = ~clkOut;//divided clock
    count <= 0;
    end
    end
    
endmodule
