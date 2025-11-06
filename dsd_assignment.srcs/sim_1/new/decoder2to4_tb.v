`timescale 1ns / 1ps

module decoder2to4_tb;
    reg [1:0] addr;
    reg en;
    wire [3:0] y;
    decoder2to4 U(.addr(addr), .en(en), .y(y));
    initial begin
        $display("en addr | y");
        en = 1; addr = 2'b00; #10;
        addr = 2'b01; #10;
        addr = 2'b10; #10;
        addr = 2'b11; #10;
        en = 0; addr = 2'b10; #10;
        $finish;
    end
endmodule

