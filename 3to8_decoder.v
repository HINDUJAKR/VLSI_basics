module decoder_3_8(
    input A,
    input B,
    input C,
    output I0,
    output I1,
    output I2,
    output I3,
    output I4,
    output I5,
    output I6,
    output I7
);

assign I0 = ~A & ~B & ~C;
assign I1 =  A & ~B & ~C;
assign I2 = ~A &  B & ~C;
assign I3 =  A &  B & ~C;
assign I4 = ~A & ~B &  C;
assign I5 =  A & ~B &  C;
assign I6 = ~A &  B &  C;
assign I7 =  A &  B &  C;

endmodule
