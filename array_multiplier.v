// Half Adder Module
module ha(
    input a,
    input b,
    output sum,
    output carry
);
assign sum   = a ^ b;
assign carry = a & b;
endmodule

// Full Adder Module
module fa(
    input a,
    input b,
    input cin,
    output sum,
    output carry
);
assign sum   = a ^ b ^ cin;
assign carry = (a & b)|(b & cin)|(cin & a);
endmodule

// Array Multiplier Module
module am(
    input  [3:0] a,
    input  [3:0] b,
    output [7:0] p
);

wire p0,p1,p2,p3;
wire p4,p5,p6,p7;
wire p8,p9,p10,p11;
wire p12,p13,p14,p15;

assign p0  = a[0]&b[0];
assign p1  = a[1]&b[0];
assign p2  = a[2]&b[0];
assign p3  = a[3]&b[0];

assign p4  = a[0]&b[1];
assign p5  = a[1]&b[1];
assign p6  = a[2]&b[1];
assign p7  = a[3]&b[1];

assign p8  = a[0]&b[2];
assign p9  = a[1]&b[2];
assign p10 = a[2]&b[2];
assign p11 = a[3]&b[2];

assign p12 = a[0]&b[3];
assign p13 = a[1]&b[3];
assign p14 = a[2]&b[3];
assign p15 = a[3]&b[3];

wire s1,c1,s2,c2,s3,c3;
wire s4,c4,s5,c5,s6,c6;
wire s7,c7,s8,c8,s9,c9;
wire s10,c10,s11,c11;

assign p[0] = p0;

ha h1(p1,p4,p[1],c1);

fa f1(p2,p5,c1,s1,c2);
ha h2(s1,p8,p[2],c3);

fa f2(p3,p6,c2,s2,c4);
fa f3(s2,p9,c3,s3,c5);
ha h3(s3,p12,p[3],c6);

fa f4(p7,c4,c5,s4,c7);
fa f5(s4,p10,c6,s5,c8);
ha h4(s5,p13,p[4],c9);

fa f6(p11,c7,c8,s6,c10);
fa f7(s6,p14,c9,p[5],c11);

fa f8(p15,c10,c11,p[6],p[7]);

endmodule
