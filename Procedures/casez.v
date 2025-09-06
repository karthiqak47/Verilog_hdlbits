module top_module (
    input  [7:0] in,   // 8-bit input
    output reg [2:0] pos // 3-bit output indicating position of first '1'
);

    always @(*) begin
        casez (in[7:0])
            8'bzzzzzzz1: pos = 3'd0; // bit 0 is high
            8'bzzzzzz10: pos = 3'd1; // bit 1 is high
            8'bzzzzz100: pos = 3'd2; // bit 2 is high
            8'bzzzz1000: pos = 3'd3; // bit 3 is high
            8'bzzz10000: pos = 3'd4; // bit 4 is high
            8'bzz100000: pos = 3'd5; // bit 5 is high
            8'bz1000000: pos = 3'd6; // bit 6 is high
            8'b10000000: pos = 3'd7; // bit 7 is high
            default:      pos = 3'd0; // no bits high
        endcase
    end

endmodule
