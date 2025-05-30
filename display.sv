module display(
    input logic clk,
    input logic [4:0] key_code,
    input logic key_pressed,
    output logic [31:0] segs_out
);  
    logic [3:0] current_digits [0:3] = '{
        4'b1111,
        4'b1111,
        4'b1111,
        4'b1111 
    };
    
    logic [2:0] current = 3'b000;
    
    always_ff @(posedge clk) begin
        static logic was_pressed = 0;
        
        if (key_pressed) begin
            if (current == 3'b101) begin
                for (int i = 0; i < 3; i++) begin
                    current_digits[i] = current_digits[i + 1];
                end
                current_digits[current - 2] <= key_code;
            end
            else begin
                current <= current + 1;
                current_digits[current - 1] <= key_code;
            end
            
        end
    end

    segment display_inst1(
        .current_digit(current_digits[0]),
        .segs_out(segs_out[7:0])
    );
    segment display_inst2(
        .current_digit(current_digits[1]),
        .segs_out(segs_out[15:8])
    );
    segment display_inst3(
        .current_digit(current_digits[2]),
        .segs_out(segs_out[23:16])
    );
    segment display_inst4(
        .current_digit(current_digits[3]),
        .segs_out(segs_out[31:24])
    );

endmodule
