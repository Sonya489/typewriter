module keyboard_controller(
    input  logic clk,
    input  logic [3:0] cols_in,      //[T13, R13, T14, R14]
    output logic [3:0] rows_out,     //[P10, R11, T12, R12]
    output logic [4:0] key_code,
    output logic key_pressed
);
    logic [1:0] row_idx = 0;
    always_ff @(posedge clk) begin
        row_idx <= row_idx + 1;
    end

    always_comb begin
        rows_out = 4'b0000;
        rows_out[row_idx] = 1'b1;
    end

    
    always_ff @(posedge clk) begin
        case (cols_in)
            4'b0001:
                case (row_idx)
                    2'b00: key_code <= 5'b00001; // 1
                    2'b01: key_code <= 5'b00010; // 2
                    2'b10: key_code <= 5'b00011; // 3
                    2'b11: key_code <= 5'b01010; // A
                endcase
            4'b0010:
                case (row_idx)
                    2'b00: key_code <= 5'b00100; // 4
                    2'b01: key_code <= 5'b00101; // 5
                    2'b10: key_code <= 5'b00110; // 6
                    2'b11: key_code <= 5'b01011; // B
                endcase
            4'b0100:
                case (row_idx)
                    2'b00: key_code <= 5'b00111; // 7
                    2'b01: key_code <= 5'b01000; // 8
                    2'b10: key_code <= 5'b01001; // 9
                    2'b11: key_code <= 5'b01100; // C
                endcase
            4'b1000:
                case (row_idx)
                    2'b00: key_code <= 5'b01110; // *
                    2'b01: key_code <= 5'b00000; // 0
                    2'b10: key_code <= 5'b01111; // #
                    2'b11: key_code <= 5'b01101; // D
                endcase
            default: key_code <= key_code;
        endcase
        
         key_pressed <= (cols_in != 4'b0000);
        
    end

endmodule
