`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/22/2023 07:42:28 PM
// Design Name: 
// Module Name: debounced_input_output
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


module debounced_input_output(
    input clk,
    input reset,
    input pone,
    input ptwo,
    output [7:0] AN_Out,
    output [6:0] C_Out,
    output wire [15:0] outp
    );  
    
    wire [1:0] ponepenalty;
    wire [1:0] ptwopenalty;
    wire [1:0] ponescore;
    wire [1:0] ptwoscore;
    wire [1:0] winner;
    
    backandforth_input bnf(.clk(clk), .reset(reset), .pone(pone), .ptwo(ptwo), .ponepenalty(ponepenalty), .ptwopenalty(ptwopenalty), .ponescore(ponescore), .ptwoscore(ptwoscore), .winner(winner), .outp(outp));
    
    reg [7:0] AN_In; 
    reg [55:0] C_In;
    reg [6:0] ssponescore, ssptwoscore, ssponepenalty, ssptwopenalty;
    
    parameter ZERO = 7'b0111111, ONE = 7'b0000110, TWO = 7'b1011011, THREE = 7'b1001111, P = 7'b1110011; 

    SevenSegmentLED SevenSegmentLED(.clk(clk),.rst(reset),.AN_In(AN_In),.C_In(C_In),.AN_Out(AN_Out),.C_Out(C_Out));

    always @ (posedge clk, posedge reset) begin
        if(reset) begin
            AN_In <= 8'h0;
            C_In <= 56'h0;
        end else begin
            case (ponescore)
                default: ssponescore <= ZERO;
                1: ssponescore <= ONE;
                2: ssponescore <= TWO;
                3: ssponescore <= THREE;
            endcase
            case (ptwoscore)
                default: ssptwoscore <= ZERO;
                1: ssptwoscore <= ONE;
                2: ssptwoscore <= TWO;
                3: ssptwoscore <= THREE;
            endcase
            case (ponepenalty)
                default: ssponepenalty <= ZERO;
                1: ssponepenalty <= ONE;
                2: ssponepenalty <= TWO;
                3: ssponepenalty <= THREE;
            endcase
            case (ptwopenalty)
                default: ssptwopenalty <= ZERO;
                1: ssptwopenalty <= ONE;
                2: ssptwopenalty <= TWO;
                3: ssptwopenalty <= THREE;
            endcase
            case (winner)
                default: begin
                    AN_In <= 8'b11111111;
                    C_In <= {P, ONE, ssponescore, ssponepenalty, P, TWO, ssptwoscore, ssptwopenalty};
                end
                2: begin
                    AN_In <= 8'b11000000;
                    C_In <= {P, ONE, 7'd0, 7'd0, 7'd0, 7'd0, 7'd0, 7'd0};
                end
                3: begin
                    AN_In <= 8'b00001100;
                    C_In <= {7'd0, 7'd0, 7'd0, 7'd0, P, TWO, 7'd0, 7'd0};
                end
           endcase
        end
    end
    
endmodule
