module c_save(
input wire a0,a1,a2,a3,
input wire b0,b1,b2,b3,
input wire cin0,cin1,cin2,cin3,

output reg cout0,cout1,cout2,cout3,
output reg sum0,sum1,sum2,sum3,

output reg cout4,cout5,cout6,cout7,
output reg sum4,sum5,sum6,sum7,

output reg cf

);
always @(*) begin
    // 4 Full Adders
    {cout0,sum0} = a0 + b0 + cin0;
    {cout1,sum1} = a1 + b1 + cin1;
    {cout2,sum2} = a2 + b2 + cin2;
    {cout3,sum3} = a3 + b3 + cin3;

    // RCA Stage
   
    {cout4,sum4} = sum0 + 1'b0 + 1'b0;
    {cout5,sum5} = sum1 + cout0 + cout4;
    {cout6,sum6} = sum2 + cout1 + cout5;
    {cout7,sum7} = sum3 + cout2 + cout6;
    
    cf = cout7;
end
endmodule
