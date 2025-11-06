`timescale 1ns / 1ps

module priority_encoder4(
    input  wire [3:0] in, // in[3] highest priority
    output reg  [1:0] code,
    output reg         valid
);
    always @(*) begin
        valid = 1'b0;
        code  = 2'b00;
        if (in[3]) begin valid = 1; code = 2'b11; end
        else if (in[2]) begin valid = 1; code = 2'b10; end
        else if (in[1]) begin valid = 1; code = 2'b01; end
        else if (in[0]) begin valid = 1; code = 2'b00; end
    end
endmodule

