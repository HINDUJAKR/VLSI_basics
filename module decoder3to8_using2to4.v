module decoder3_8_using2_4(
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
wire nC;
not(nC, C);
decoder2_4_enable D0 (
    .A(A),
    .B(B),
    .E(nC),
    .I0(I0),
    .I1(I1),
    .I2(I2),
    .I3(I3)
);
decoder2_4_enable D1 (
    .A(A),
    .B(B),
    .EI,
    .I0(I4),
    .I1(I5),
    .I2(I6),
    .I3(I7)
);
endmodule
