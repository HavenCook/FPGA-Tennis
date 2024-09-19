`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/26/2023 09:30:54 AM
// Design Name: 
// Module Name: debouncer_sim
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


module debouncer_sim(
    );
    
    reg clk, in, reset;
    wire out;//, Q;
    //wire [1:0] deb_count;
    
    debouncer deb(.clk(clk), .in(in), .reset(reset), .out(out));//, .Q(Q), .deb_count(deb_count));
    
    initial begin
        clk=0;
        in = 0;
        forever
        #2 clk=~clk;
    end
    initial begin
        reset=0;
        #2 reset=1;
        #4 reset=0;
        #2 in=1;
        #40 in= 0;
      	#2 in=1;
        #8 in= 0;
      	#2 in=1;
        #20 in= 0;
        #4 $finish;
    end
endmodule
