module wallace(
input [3:0] a,
input [3:0] b,
output [7:0] pf
);
// Partial Products
wire p0,p1,p2,p3,p4,p5,p6,p7;
wire p8,p9,p10,p11,p12,p13,p14,p15;

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

// Stage 1 Reduction
wire s1,c1,s2,c2,s3,c3,s4,c4;

fa fa1(p2,p5,p8,s1,c1);
fa fa2(p3,p6,p9,s2,c2);
fa fa3(p7,p10,p13,s3,c3);
fa fa4(p11,p14,c3,s4,c4);

// Final Stage
wire c5,c6,c7,c8,c9;

assign pf[0] = p0;

ha ha1(p1,p4,pf[1],c5);

fa fa5(s1,c1,p12,pf[2],c6);
fa fa6(s2,c2,c5,pf[3],c7);
fa fa7(s3,c3,c6,pf[4],c8);
fa fa8(s4,c4,c7,pf[5],c9);
fa fa9(p15,c8,c9,pf[6],pf[7]);

endmodule
