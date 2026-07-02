module booth(
input [3:0] A,
input [3:0] B,
output reg [7:0] P
);
integer i;
reg signed [4:0] AQ;
reg signed [4:0] M;
reg [3:0] Q;
reg Q_1;

always @(*) begin

    AQ  = 5'b00000;
    M   = {1'b0,A};
    Q   = B;
    Q_1 = 1'b0;

    for(i=0; i<4; i=i+1) begin

        if({Q[0],Q_1} == 2'b01)
            AQ = AQ + M;
        else if({Q[0],Q_1} == 2'b10)
            AQ = AQ - M;

        // Right Shift
        {AQ,Q,Q_1} = {AQ[4],AQ,Q};

    end
    P = {AQ[3:0],Q};
end
endmodule
