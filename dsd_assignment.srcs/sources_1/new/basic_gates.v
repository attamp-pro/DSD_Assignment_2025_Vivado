`timescale 1ns / 1ps
// basic_gates.v
module and_gate (
    input  wire a,
    input  wire b,
    output wire y
);
    assign y = a & b;
endmodule

module or_gate (
    input  wire a,
    input  wire b,
    output wire y
);
    assign y = a | b;
endmodule

module not_gate (
    input  wire a,
    output wire y
);
    assign y = ~a;
endmodule

module xor_gate (
    input  wire a,
    input  wire b,
    output wire y
);
    assign y = a ^ b;
endmodule

