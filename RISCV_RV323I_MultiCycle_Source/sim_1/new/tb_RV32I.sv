`timescale 1ns / 1ps

module tb_RV32I();

    logic clk = 0, reset = 1;

    MCU dut (
        .clk(clk),
        .reset(reset)
    );

    always #5 clk = ~clk;

    initial begin
        #10;
        reset = 0;
        #4000;
        $stop;
    end
endmodule
