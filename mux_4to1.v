module mux_4to1(
input s0,
input s1,
input I0,
input I1,
input I2,
input I3,
output Y
 );
 assign Y = ~s0&~s1&I0|~s0&s1&I1|s0&~s1&I2|s0&s1&I3;
endmodule
