`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/22/2023 01:02:24 PM
// Design Name: 
// Module Name: backandforth
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


module backandforth(
    input clk,
    input reset,
    input [1:0] set,
    output reg [15:0] outp
    );
    
    reg [3:0] Qprev, Q, Qn;
    //decoder dec(.inp(Q), .outp(outp));
    
    always @(posedge clk, posedge reset) begin
        if (reset) begin
            Q <= 15;
        end else begin
            Qprev <= Q;
            Q <= Qn;
        end
    end
    
    always @(*) begin
        case (set)
                2: begin
                    Qn <= 0;
                end
                3: begin
                    Qn <= 15;
                end
                default: begin
                        if (Q == 0) begin
                            Qn <= Q + 1;
                        end else if (Q == 15) begin
                            Qn <= Q - 1;
                        end else if (Q > Qprev) begin
                            Qn <= Q + 1;
                        end else if (Q < Qprev) begin
                            Qn <= Q - 1;
                        end else begin
                            Qn <= Q;
                        end
                end
            endcase
        outp <= 2**Q;
    end
    
    
endmodule
