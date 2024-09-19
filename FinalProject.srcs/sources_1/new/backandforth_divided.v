`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/22/2023 01:38:11 PM
// Design Name: 
// Module Name: backandforth_divided
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module backandforth_divided(
    input clk,
    input reset,
    input [1:0] set,
    input [5:0] speed,
    output [15:0] outp
    );
    
    wire w1;
    
    variable_clock_delay vcd(.clk(clk), .reset(reset), .speed(speed), .divided_clk(w1));
    backandforth bnf(.clk(w1), .reset(reset), .set(set), .outp(outp));
    
endmodule
