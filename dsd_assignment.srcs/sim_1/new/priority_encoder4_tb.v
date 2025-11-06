`timescale 1ns / 1ps

module priority_encoder4_tb;
    reg [3:0] in;
    wire [1:0] code;
    wire valid;
    priority_encoder4 U(.in(in), .code(code), .valid(valid));
    initial begin
        $display("in | valid code");
        in = 4'b0000; #10;
        in = 4'b0001; #10;
        in = 4'b0010; #10;
        in = 4'b0110; #10;
        in = 4'b1000; #10;
        in = 4'b1011; #10;
        $finish;
    end
endmodule

