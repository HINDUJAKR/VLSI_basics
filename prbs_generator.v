module prbs(
input clk,
input clr,
output reg [3:0] Q
 );
 wire y;
 xor (y,Q[3],Q[0]);
 always @ (posedge clk or posedge clr) begin
 if (clr)
 Q <= 4'b0001;
 else 
 Q <= {Q[2:0], y};
 end
endmodule
