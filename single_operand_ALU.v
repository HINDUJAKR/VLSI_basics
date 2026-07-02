module single_bit_alu_source(
    input wire clk,
    input wire rst,
    input wire demux,
    input wire [3:0] X,
    input wire p_load,
    input wire dir,
    input wire rot,
    input wire hold,
    output wire [3:0] S_out,
    output wire Cout_out
);
    wire adder_en;
    assign adder_en = (demux == 1'b0) ? 1'b1 : 1'b0;
    reg [4:0] reg_data;
    wire [3:0] Y = reg_data[3:0];
    wire Cin = reg_data[4];

    wire [4:0] adderrow_0;
    wire [4:0] adderrow_1;
    wire [3:0] S;
    wire Cout;

    assign adderrow_0 = X + Y + 1'b0;
    assign adderrow_1 = X + Y + 1'b1;
    assign S = Cin ? adderrow_1[3:0] : adderrow_0[3:0];
    assign Cout = Cin ? adderrow_1[4] : adderrow_0[4];

    always @(posedge clk or posedge rst) begin
        if (rst) begin
            reg_data <= 5'b00000;
        end
        else if (adder_en == 1'b1) begin
            if (p_load) begin
                reg_data <= {Cout, S};
            end
        end
        else begin
            if (!hold) begin
                if (dir == 1'b0) begin
                    if (rot)
                        reg_data <= {reg_data[0], reg_data[4:1]};
                    else
                        reg_data <= {1'b0, reg_data[4:1]};
                end
                else begin
                    if (rot)
                        reg_data <= {reg_data[3:0], reg_data[4]};
                    else
                        reg_data <= {reg_data[3:0], 1'b0};
                end
            end
        end
    end

    assign S_out = adder_en ? S : Y;
    assign Cout_out = adder_en ? Cout : Cin;
endmodule
