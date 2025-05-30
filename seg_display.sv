module segment(
    input  logic [3:0] current_digit,
    output logic [7:0] segs_out   
);

    logic [7:0] seg_codes [0:16] = '{
        8'b00111111, // 0
        8'b00000110, // 1
        8'b01011011, // 2
        8'b01001111, // 3
        8'b01100110, // 4
        8'b01101101, // 5
        8'b01111101, // 6
        8'b00000111, // 7
        8'b01111111, // 8
        8'b01101111, // 9
        8'b01110111, // A
        8'b01111100, // b
        8'b00111001, // C
        8'b01011110, // d
        8'b01110110, // *
        8'b01001001, // #
        8'b01000000  // - (пусто)
    };

    always_comb begin
        segs_out[7:0]   = seg_codes[current_digit];
    end

endmodule
