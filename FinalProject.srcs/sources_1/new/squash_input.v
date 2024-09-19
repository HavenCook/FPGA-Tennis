`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/26/2023 11:13:31 AM
// Design Name: 
// Module Name: squash_input
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


module squash_input(
    input clk,
    input reset,
    input pone,
    output reg [1:0] ponepenalty,
    output reg [11:0] ponescore,
    output wire [15:0] outp
    );
    
    reg [1:0] set;
    reg [5:0] speed;
    reg [2:0] Qprev, Q, Qn;
    reg server;
    reg [15:0] outpstate, outpstaten, outpstateprev;
    
    wire w1, w2;
    
    backandforth_divided bnf(.clk(clk), .reset(reset), .set(set), .speed(speed), .outp(outp));
    debouncer db1(.clk(clk), .in(pone), .reset(reset), .out(w1));
    
    //backandforth bnf(.clk(clk), .reset(reset), .set(set), .outp(outp));
    
    always @(posedge clk, posedge reset) begin
        if (reset) begin
            Q <= 0;
        end else begin
            Qprev <= Q;
            Q <= Qn;
            outpstateprev <= outpstate;
            outpstate <= outpstaten;
        end
    end
    
    always @(negedge clk) begin
        if (reset) begin
            speed <= 0;
            set <= 0;
            ponepenalty <= 0;
            ponescore <= 0;
        end else begin
            case (Q)
                default: begin
                    speed <= 0;
                    if (w1) begin
                        set <= 0;
                        Qn <= 2;
                    end else begin
                        Qn <= 0;
                        set <= 3;
                    end
                    server <= 0;
                end
                2: begin
                    if (outp == 16'b0000000000000001) begin
                        Qn <= 4;
                    end else begin
                        Qn <= 2;
                    end
                    set <= 0;
                end
                3: begin
                    if (w1) begin
                        if (ponepenalty == 2) begin
                            Qn <= 6;
                        end else begin
                            ponepenalty <= ponepenalty + 1;
                            Qn <= 3;
                        end
                    end else begin
                        if (outp == 16'b1000000000000000) begin
                            Qn <= 5;
                        end else begin
                            Qn <= 3;
                        end
                    end
                    set <= 0;
                end
                4: begin
                    Qn <= 3;
                end
                5: begin
                    if (pone) begin
                        Qn <= 2;
                        ponescore <= ponescore + 1;
                        speed <= speed + 1;
                    end else begin
                        if (outp == 16'b1000000000000000 || outpstate != outpstateprev) begin
                            Qn <= 5;
                        end else begin
                            Qn <= 6;
                        end
                    end
                end
                6: begin
                    if (w1 || w2) begin
                        Qn <= 0;
                    end else begin
                        ponescore <= 0;
                        ponepenalty <= 0;
                        set <= 3;
                        Qn <= 6;
                    end
                end
            endcase
            outpstaten <= outp;
        end
    end
endmodule
