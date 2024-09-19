`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/26/2023 11:25:13 AM
// Design Name: 
// Module Name: debounced_squash_io
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


module debounced_squash_io(
    input clk,
    input reset,
    input pone,
    output [7:0] AN_Out,
    output [6:0] C_Out,
    output wire [15:0] outp
    );  
    
    wire [1:0] ponepenalty;
    wire [11:0] ponescore;
    
    squash_input si(.clk(clk), .reset(reset), .pone(pone), .ponepenalty(ponepenalty), .ponescore(ponescore), .outp(outp));
    
    reg [7:0] AN_In; 
    reg [55:0] C_In;
    reg [6:0] ssponescore0, ssponescore1, ssponescore2, ssponepenalty;
    
    parameter ZERO = 7'b0111111, ONE = 7'b0000110, TWO = 7'b1011011, THREE = 7'b1001111, P = 7'b1110011; 
    parameter FOUR = 7'b1100110, FIVE = 7'b1101101, SIX = 7'b1111101, SEVEN = 7'b0000111, EIGHT = 7'b1111111, NINE = 7'b1101111; 
    parameter A = 7'b1110111, B = 7'b1111100, C = 7'b0111001, D = 7'b1011110, E = 7'b1111001, F = 7'b1110001; 

    SevenSegmentLED SevenSegmentLED(.clk(clk),.rst(reset),.AN_In(AN_In),.C_In(C_In),.AN_Out(AN_Out),.C_Out(C_Out));

    always @ (posedge clk, posedge reset) begin
        if(reset) begin
            AN_In <= 8'h0;
            C_In <= 56'h0;
        end else begin
            case (ponescore[3:0])
                0: ssponescore0 <= ZERO;
                1: ssponescore0 <= ONE;
                2: ssponescore0 <= TWO;
                3: ssponescore0 <= THREE;
                4: ssponescore0 <= FOUR;
                5: ssponescore0 <= FIVE;
                6: ssponescore0 <= SIX;
                7: ssponescore0 <= SEVEN;
                8: ssponescore0 <= EIGHT;
                9: ssponescore0 <= NINE;
                10: ssponescore0 <= A;
                11: ssponescore0 <= B;
                12: ssponescore0 <= C;
                13: ssponescore0 <= D;
                14: ssponescore0 <= E;
                15: ssponescore0 <= F;
            endcase
            case (ponescore[7:4])
                0: ssponescore1 <= ZERO;
                1: ssponescore1 <= ONE;
                2: ssponescore1 <= TWO;
                3: ssponescore1 <= THREE;
                4: ssponescore1 <= FOUR;
                5: ssponescore1 <= FIVE;
                6: ssponescore1 <= SIX;
                7: ssponescore1 <= SEVEN;
                8: ssponescore1 <= EIGHT;
                9: ssponescore1 <= NINE;
                10: ssponescore1 <= A;
                11: ssponescore1 <= B;
                12: ssponescore1 <= C;
                13: ssponescore1 <= D;
                14: ssponescore1 <= E;
                15: ssponescore1 <= F;
            endcase
            case (ponescore[11:8])
                0: ssponescore2 <= ZERO;
                1: ssponescore2 <= ONE;
                2: ssponescore2 <= TWO;
                3: ssponescore2 <= THREE;
                4: ssponescore2 <= FOUR;
                5: ssponescore2 <= FIVE;
                6: ssponescore2 <= SIX;
                7: ssponescore2 <= SEVEN;
                8: ssponescore2 <= EIGHT;
                9: ssponescore2 <= NINE;
                10: ssponescore2 <= A;
                11: ssponescore2 <= B;
                12: ssponescore2 <= C;
                13: ssponescore2 <= D;
                14: ssponescore2 <= E;
                15: ssponescore2 <= F;
            endcase
            case (ponepenalty)
                default: ssponepenalty <= ZERO;
                1: ssponepenalty <= ONE;
                2: ssponepenalty <= TWO;
                3: ssponepenalty <= THREE;
            endcase
            AN_In <= 8'b11111111;
            C_In <= {P, ONE, 7'd0, ssponepenalty, 7'd0, ssponescore2, ssponescore1, ssponescore0};
        end
    end
    
endmodule
