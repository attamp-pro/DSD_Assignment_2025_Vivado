`timescale 1ns / 1ps

module decoder2to4(
    input  wire [1:0] addr,
    input  wire en,
    output wire [3:0] y
);
    assign y = en ? (4'b0001 << addr) : 4'b0000;
endmodule

