`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/22/2023 05:15:03 PM
// Design Name: 
// Module Name: backandforth_input_test
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


module backandforth_input_test(

    );
    
    reg pone, ptwo, clk, reset;
    wire [1:0] ponepenalty;
    wire [1:0] ptwopenalty;
    wire [1:0] ponescore;
    wire [1:0] ptwoscore;
    wire [1:0] winner;
    wire [15:0] outp;
    
    backandforth_input bnf(.clk(clk), .reset(reset), .pone(pone), .ptwo(ptwo), .ponepenalty(ponepenalty), .ptwopenalty(ptwopenalty), .ponescore(ponescore), .ptwoscore(ptwoscore), .winner(winner), .outp(outp));
    
    initial begin
        clk <= 0;
        reset <= 0;
        pone <= 0;
        ptwo <= 0;
        #10 reset <= 1;
        #15 reset <= 0;
    end
    
    always begin
        #5 clk = ~clk;
    end
    always begin
        #300 pone <= ~pone;
        #20 pone <= ~pone;
        #340 ptwo <= ~ptwo;
        #20 ptwo <= ~ptwo;
    end
    
    
endmodule
