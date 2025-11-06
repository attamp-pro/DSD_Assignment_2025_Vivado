`timescale 1ns / 1ps

module bool_expr_tb;
    reg A,B,C;
    wire F;
    bool_expr U(.A(A), .B(B), .C(C), .F(F));
    initial begin
        $display("A B C | F");
        $monitor("%b %b %b | %b", A,B,C,F);
        {A,B,C} = 3'b000; #10;
        {A,B,C} = 3'b001; #10;
        {A,B,C} = 3'b010; #10;
        {A,B,C} = 3'b011; #10;
        {A,B,C} = 3'b100; #10;
        {A,B,C} = 3'b101; #10;
        {A,B,C} = 3'b110; #10;
        {A,B,C} = 3'b111; #10;
        $finish;
    end
endmodule

