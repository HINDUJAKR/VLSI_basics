module piso(
input clk,
input clr,
input load,
input [3:0] pin,
output sout
);
reg [3:0] q;
always @ (posedge clk or posedge clr) begin
if (clr)
q <= 4'b0000;
else if(load)
q <= pin;
else 
q <= {1'b0, q[3:1]};
end
assign sout = q[0];
endmodule
