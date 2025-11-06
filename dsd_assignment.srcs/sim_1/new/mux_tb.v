`timescale 1ns / 1ps

module mux_tb;
    reg [3:0] d;
    reg [1:0] sel;
    wire y;
    mux4_1 U(.d(d), .sel(sel), .y(y));
    initial begin
        $display("sel d | y");
        d = 4'b1010;
        sel = 2'b00; #10;
        sel = 2'b01; #10;
        sel = 2'b10; #10;
        sel = 2'b11; #10;
        $finish;
    end
endmodule

