`timescale 1ns / 1ps


module bool_expr(
    input  wire A,
    input  wire B,
    input  wire C,
    output wire F
);
    assign F = (~A & B) | (A & ~C);
endmodule




