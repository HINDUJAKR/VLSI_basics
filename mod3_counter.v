module mod3_count(
input clk,
input clr,
output reg [1:0] count
);
always @(posedge clk or posedge clr)
begin
    if (clr)
        count <= 2'b00;
    else if (count == 2'b10)
        count <= 2'b00;
    else
        count <= count + 1'b1;
end
endmodule
