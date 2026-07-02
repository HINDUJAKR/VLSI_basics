module vedic(
input [3:0] a,
input [3:0] b,
output [7:0] y
   );
   wire c1;
   wire c2,c3;
   wire c4,c5,c6;
   wire c7, c8, c9, c10;
   wire c11, c12, c13;
   wire c14, c15;
   wire c16;
   
   // AND Gates
 //assign c1 = a[0]&b[0];
  assign c2 = a[1]&b[0];
   assign c3 = a[0]&b[1];
    assign c4 = a[2]&b[0];
     assign c5 = a[1]&b[1];
      assign c6 = a[0]&b[2];
       assign c7 = a[3]&b[0];
        assign c8 = a[2]&b[1];   
    assign c9 = a[1]&b[2];
      assign c10 = a[0]&b[3];
       assign c11 = a[3]&b[1];
        assign c12 = a[2]&b[2]; 
         assign c13 = a[1]&b[3]; 
          assign c14 = a[3]&b[2];   
           assign c15 = a[2]&b[3];  
               assign c16 = a[3]&b[3];  
               
               assign y = a*b;       
endmodule
