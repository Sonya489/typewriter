module top(
    input  logic clk,
    input  logic [3:0] cols_in,
    output logic [3:0] rows_out,
    output logic [31:0] segs_out
);

    logic [4:0] key_code;
    logic key_pressed;

    keyboard_controller keyboard_inst(
        .clk(clk),
        .cols_in(cols_in),
        .rows_out(rows_out),
        .key_code(key_code),
        .key_pressed(key_pressed)
    );

    segment_display display_inst(
        .clk(clk),
        .key_code(key_code),
        .key_pressed(key_pressed),
        .segs_out(segs_out)
    );

endmodule
