`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/12/2023 05:13:11 PM
// Design Name: 
// Module Name: debouncer
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


module debouncer(
    input clk,
    input in,
    input reset,
    output reg out
    );
    
    reg [21:0] deb_count, deb_countprev;
    reg Q, Qn;
    parameter MAX = 22'b1111111111111111111111;
    
    always @(posedge clk, posedge reset) begin
        if (reset) begin
            Q <= 0;
            deb_countprev <= 0;
        end else begin
            Q <= Qn;
            deb_countprev <= deb_count;
        end
    end
    
    always @(*) begin
        if (in) begin
            Qn <= 1;
        end else begin
            Qn <= 0;
        end
        
        if (Q) begin
            if (deb_count >= MAX) begin
                if (deb_count != deb_countprev) begin
                    out <= 1;
                end else begin
                    out <= 0;
                end
            end else begin
                deb_count <= deb_countprev + 1;
                out <= 0;
            end
        end else begin
            deb_count <= 0;
            out <= 0;
        end
    end
endmodule
