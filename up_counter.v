module program_up(
input clk,
input clr,
input [3:0] pin,
output reg [3:0] pout
);

always @(posedge clk or posedge clr) begin

    if (clr)
        pout <= 4'b0000;
    else if (pout < pin)
        pout <= pout + 1'b1;
    else
        pout <= pout;   
end

endmodule
