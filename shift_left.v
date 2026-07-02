module sl(
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
q <= {q[2:0], din};
end 
assign dout = q[3];
endmodule
