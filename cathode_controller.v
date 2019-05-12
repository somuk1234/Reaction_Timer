`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.03.2019 17:42:48
// Design Name: 
// Module Name: cathode_controller
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


module cathode_controller(
input [1:0] anode,
input [3:0] thousand,
input [3:0] hund,
input [3:0] ten,
input [3:0] unit,
output reg [3:0] digit,
output reg dp

    );
    always @(anode)
    begin
    case (anode)
    2'b00:
    begin
    digit<=thousand;
    dp<=1;
    end
    2'b01:
    begin
    digit<=hund;
    dp<=0;
    end
    2'b10:
    begin
    digit<=ten;
    dp<=1;
    end
    2'b11:
    begin
    digit<=unit;
    dp<=1;
    end
    default :
    begin
    digit<=0;
    dp<=1;
    end
    endcase
    end
    
endmodule
