module segment_display(
    input  logic clk,          // Тактовый сигнал
    input  logic [3:0] key_code,     // Код нажатой клавиши от keyboard_controller
    input  logic key_pressed,        // Флаг нажатия от keyboard_controller
    output logic [31:0] segs_out     // 32 бита для 4 индикаторов (8 сегментов × 4)
);

    // Делитель частоты (если нужен)
    logic [14:0] counter = 0;
    logic slow_clk = 0;
    
    always_ff @(posedge clk) begin
        if (counter == 15'd32000) begin
            slow_clk <= ~slow_clk;
            counter <= 0;
        end else begin
            counter <= counter + 1;
        end
    end

    // Регистр для хранения текущего символа
    logic [3:0] current_digit = 4'b1111; // Изначально пусто
    
    // Обработка нажатий
    logic prev_pressed = 0;
    always_ff @(posedge slow_clk) begin
        prev_pressed <= key_pressed;
        
        // Обнаружение фронта нажатия
        if (key_pressed && !prev_pressed) begin
            current_digit <= key_code; // Обновляем текущий символ
        end
    end

    // Таблица кодирования сегментов (hgfedcba)
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

    // Формирование выходных сигналов
    // Только правый индикатор (UL4) показывает символ, остальные пустые
    always_comb begin
        segs_out[7:0]   = seg_codes[16];  // UL1 (левый) - пусто
        segs_out[15:8]  = seg_codes[16];  // UL2 - пусто
        segs_out[23:16] = seg_codes[16];  // UL3 - пусто
        segs_out[31:24] = seg_codes[current_digit];  // UL4 (правый) - текущий символ
    end

endmodule
