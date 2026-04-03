`timescale 1ns / 1ps
module RAM #(
    parameter DATA_WIDTH = 8,
    parameter ADDR_WIDTH = 4,
    parameter MEM_DEPTH  = 16
)(
    input  wire                  clk,
    input  wire                  we,
    input  wire                  re,
    input  wire [ADDR_WIDTH-1:0] addr,
    input  wire [DATA_WIDTH-1:0] din,
    output reg  [DATA_WIDTH-1:0] dout
);
    // Memory array
    reg [DATA_WIDTH-1:0] mem [0:MEM_DEPTH-1];

    // Write Operation
    always @(posedge clk) begin
        if (we)
            mem[addr] <= din;
    end
    // Read Operation
    always @(posedge clk) begin
        if (re)
            dout <= mem[addr];
    end
endmodule
