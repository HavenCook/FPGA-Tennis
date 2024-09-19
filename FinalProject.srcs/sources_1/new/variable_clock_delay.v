`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/22/2023 01:04:50 PM
// Design Name: 
// Module Name: variable_clock_delay
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


module variable_clock_delay(
	input clk,
	input reset,
	input [5:0] speed,
	output reg divided_clk
    );
    
    wire [24:0] toggle_value = 25'b1000000000000000000000000 - (speed * 25'b000010000000000000000000);
    //wire [9:0] toggle_value = 10'b1000000000 - (speed * 25'b000010000);
    reg [24:0] cnt;
    //reg [9:0] cnt;
    
    always @(posedge clk, posedge reset) begin
        if (reset==1) begin
            cnt <= 0;
            divided_clk <= 0;
        end else begin
            if (cnt==toggle_value) begin
                cnt <= 0;
                divided_clk <= ~divided_clk;
            end else begin
                cnt <= cnt +1;
                divided_clk <= divided_clk;		
            end
        end
    end

endmodule
