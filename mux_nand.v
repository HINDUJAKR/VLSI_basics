module mux_nand(
input s0,
input s1,
input I0,
input I1,
input I2,
input I3,
output y
);
assign y=(I0&~(s1&s1)&~(s0&s0)&I1&~(s0&s0)&s1&I2&s0&~(s1&s1)&I3&s0&s1);
endmodule
