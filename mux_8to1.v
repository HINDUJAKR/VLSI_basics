module mux_8to1(
    input[2:0]s,
    input[7:0]I,
    output reg y
    );
    always@(*)begin
    case({s0,s1,s2})
    3'b000: y=I0;
      3'b001: y=I1;
        3'b010: y=I2;
          3'b011: y=I3;
            3'b100: y=I4;
              3'b101: y=I5;
                3'b110: y=I6;
                  3'b111: y=I7;
                  endcase 
endmodule
