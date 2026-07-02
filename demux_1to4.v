module demux_4(
input s0,
input s1,
input I,
output y0,
output y1,
output y2,
output y3
);
assign y0 = ~s1&~s0&I;
assign y1 = ~s1&s0&I;
assign y2 = s1&~s0&I;
assign y3 = s1&s0&I;
endmodule
