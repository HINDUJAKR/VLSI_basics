module mux_using4(
input s0,s1,s2,
input I0,I1,I2,I3,I4,I5,I6,I7,
output  y
 );
 wire y1,y2;
 assign y1 = (~s0&~s1&I0)|(~s0&s1&I1)|(s0&~s1&I2)|(s0&s1&I3);
 assign y2 = (~s0&~s1&I4)|(~s0&s1&I5)|(s0&~s1&I6)|(s0&s1&I7);
 assign y = (~s2&y1)|(s2&y2);
endmodule
