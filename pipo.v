module pipo(
input clk,
input clr,
input [3:0]pin,
output reg [3:0]pout=4'b0000
);
reg [3:0]q; 
always @ (posedge clk or posedge clr)begin
if (clr)
q <= 4'b0000;
else 
pout <= pin;
 end 
endmodule
