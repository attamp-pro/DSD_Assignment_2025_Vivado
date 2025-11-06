`timescale 1ns / 1ps

module mux2_1 (
    input  wire a,
    input  wire b,
    input  wire sel,
    output wire y
);
    assign y = sel ? b : a;
endmodule

module mux4_1 (
    input  wire [3:0] d,
    input  wire [1:0] sel,
    output wire y
);
    assign y = (sel==2'b00) ? d[0] :
               (sel==2'b01) ? d[1] :
               (sel==2'b10) ? d[2] : d[3];
endmodule

module mux8_1 (
    input  wire [7:0] d,
    input  wire [2:0] sel,
    output wire y
);
    assign y = (sel==3'd0) ? d[0] :
               (sel==3'd1) ? d[1] :
               (sel==3'd2) ? d[2] :
               (sel==3'd3) ? d[3] :
               (sel==3'd4) ? d[4] :
               (sel==3'd5) ? d[5] :
               (sel==3'd6) ? d[6] : d[7];
endmodule

