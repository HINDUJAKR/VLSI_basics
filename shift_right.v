module sr(
input clk,
input clr,
input din,
output dout 
);
reg [3:0] q;
always @ (posedge clk or posedge clr) begin
if  (clr)
q <= 4'b0000;
else 
q <= {din,  q[3:1]};
end 
assign dout = q[0];
endmodule
