`timescale 1ns / 1ps

module basic_gates_tb;
    reg a, b;
    wire and_y, or_y, not_y, xor_y;

    and_gate U1(.a(a), .b(b), .y(and_y));
    or_gate  U2(.a(a), .b(b), .y(or_y));
    not_gate U3(.a(a),         .y(not_y));
    xor_gate U4(.a(a), .b(b), .y(xor_y));

    initial begin
        $display("time a b | AND OR NOT XOR");
        $monitor("%4t   %b %b |  %b   %b   %b   %b", $time, a, b, and_y, or_y, not_y, xor_y);
        a = 0; b = 0; #10;
        a = 0; b = 1; #10;
        a = 1; b = 0; #10;
        a = 1; b = 1; #10;
        $finish;
    end
endmodule

