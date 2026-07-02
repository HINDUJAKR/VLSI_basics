module c_select(
    input  [3:0] a,
    input  [3:0] b,
    input        cin,
    output reg [3:0] sum,
    output reg       cout
);

reg [4:0] result0;
reg [4:0] result1;

always @(*) begin

    // Calculate both possibilities
    result0 = a + b + 0;
    result1 = a + b + 1;

    if(cin == 0) begin
        sum  = result0[3:0];
        cout = result0[4];
    end
    else begin
        sum  = result1[3:0];
        cout = result1[4];
    end

end
endmodule
