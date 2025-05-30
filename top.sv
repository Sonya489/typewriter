module top(
    input  logic clk,
    input  logic [3:0] cols_in,
    output logic [3:0] rows_out,
    output logic [31:0] segs_out
);

    logic [31:0] counter = 0;
    logic slow_clk = 0;
    
    always_ff @(posedge clk) begin
        if (counter == 32'd700_000) begin
            slow_clk <= ~slow_clk;
            counter <= 0;
        end else begin
            counter <= counter + 1;
        end
    end
    

    logic [4:0] key_code;
    logic key_pressed;

    keyboard_controller keyboard_inst(
        .clk(slow_clk),
        .cols_in(cols_in),
        .rows_out(rows_out),
        .key_code(key_code),
        .key_pressed(key_pressed)
    );
    
    
    display display_inst(
        .clk(slow_clk),
        .key_code(key_code),
        .key_pressed(key_pressed),
        .segs_out(segs_out)
    );
endmodule
