`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/22/2023 02:14:39 PM
// Design Name: 
// Module Name: vcd_sim
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


module vcd_sim(
    );
    reg clk, reset;
    reg [5:0] speed;
    wire outp;
    variable_clock_delay vcd(.clk(clk), .reset(reset), .speed(speed), .divided_clk(outp));
    
    initial begin
        clk <= 0;
        reset <= 0;
        speed <= 0;
        #10 reset <= 1;
        #15 reset <= 0;
    end
    
    always begin
        #10 clk = ~clk;
    end
    always begin
        #320 speed <= speed + 1;
    end
    
endmodule
