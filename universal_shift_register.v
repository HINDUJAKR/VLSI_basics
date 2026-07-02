module usr(
input clk,
input clr,
input [2:0] sel,
input sr,
input sl,
input [3:0] pin,
output reg [3:0] q
 );
 always @ (posedge clk or posedge clr) begin
 if (clr)
 q <= 4'b0000;
 else begin
    case (sel)
    3'b000: q<=q;
    3'b001: q<={sr,q[3:1]};
    3'b010: q<={q[2:0], sl};
    3'b011: q<={q[0],q[3:1]};
    3'b100: q<={q[2:0],q[3]};
    3'b101: q<=pin;
    default : q<=q; 
    endcase
    end
    end 
