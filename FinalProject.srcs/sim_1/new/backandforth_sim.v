`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/22/2023 01:24:42 PM
// Design Name: 
// Module Name: backandforth_sim
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


module backandforth_sim(
    );
    reg clk, reset;
    reg [1:0] set;
    wire [15:0] outp;
    backandforth bnf(.clk(clk), .reset(reset), .set(set), .outp(outp));
    
    initial begin
        clk <= 0;
        reset <= 0;
        set <= 0;
        #10 reset <= 1;
        #15 reset <= 0;
    end
    
    always begin
        #10 clk = ~clk;
    end
    always begin
        #520 set <= set + 1;
    end
    
endmodule
