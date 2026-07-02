module decoder_nand1(
    input A,
    input B,
    output I0,
    output I1,
    output I2,
    output I3
    );
    wire nA,nB;
    wire x,y,z,w;
    nand(nA, A, A);
    nand(nB, B, B);
    nand(x, nA, nB);
    nand(y, nA, B);
    nand(z, A, nB);
    nand(w, A, B);
    nand(I0,x,x);
    nand(I1,y,y);
    nand(I2,z,z);
    nand(I3,w,w);
endmodule
