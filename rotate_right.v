module rr(
input clk,
input clr,
output reg [3:0] q
 );
 always @(posedge clk or posedge clr) begin
 if (clr)
 q <= 4'b1011;
 else 
 q <= {q[0], q[3:1]};
 end
endmodule
