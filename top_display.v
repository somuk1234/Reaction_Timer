`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.03.2019 02:39:28
// Design Name: 
// Module Name: top_display
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


module top_display(
input clk,
input [3:0] thousand,
input [3:0] hund,
input [3:0] ten,
input [3:0] unit,
output [6:0] LED_out,
output dp,
output [3:0] Anode_activate

    );
    wire [3:0] digit;
    wire [1:0] anode;
    anode_controller ac1(clk,Anode_activate,anode);
    cathode_controller cc1(anode,thousand,hund,ten,unit,digit,dp);
    display d1(digit,LED_out);
endmodule
