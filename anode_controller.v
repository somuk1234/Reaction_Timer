module anode_controller(
input clk,
output reg [3:0] anode,
output  [1:0] an

);
reg [19:0] count;

always @(posedge clk)
begin
count<=count+1;
end
  assign an=count[19:18];
always @(an)
begin
    case (an)
    2'b00:
    begin
    anode<=4'b0111;
    end
    2'b01:
    begin
    anode<=4'b1011;
    end
    2'b10:
    begin
    anode<=4'b1101;
    end
    2'b11:
    begin
    anode<=4'b1110;
    end
    default :
    begin
    anode<=4'b1111;
    end
    endcase
    end
endmodule