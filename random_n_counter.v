module seq_counter(
input clk,
input clr,
output reg [3:0] count
);
always @(posedge clk or posedge clr)
begin
    if (clr)
        count <= 4'd0;
    else if (count == 4'd8)
        count <= 4'd0;
    else
        count <= count + 4'd2;
end
endmodule
