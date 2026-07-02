module program_down(
input clk,
input clr,
input [3:0] pin,
output reg [3:0] pout
);

always @(posedge clk or posedge clr) begin
    if (clr)
        pout<=pin;
    else if(pout > 4'b0000)
        pout <= pout - 1'b1; 
end
endmodule
