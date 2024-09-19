`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/26/2023 11:43:09 AM
// Design Name: 
// Module Name: toplevel
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


module toplevel(
    input clk,
    input reset,
    input pone,
    input ptwo,
    input toggle,
    output reg [7:0] AN_Out,
    output reg [6:0] C_Out,
    output reg [15:0] outp
    );  
    
    
    wire [7:0] AN_Outt, AN_Outs;
    wire [6:0] C_Outt, C_Outs;
    wire [15:0] outpt, outps;
    reg r1;
    reg toggleQ, toggleQn, toggleQprev;
    
    
    debounced_input_output tennis(.clk(clk), .reset(r1), .pone(pone), .ptwo(ptwo), .AN_Out(AN_Outt), .C_Out(C_Outt), .outp(outpt));
    debounced_squash_io squash(.clk(clk), .reset(r1), .pone(pone), .AN_Out(AN_Outs), .C_Out(C_Outs), .outp(outps));
    
    always @(posedge clk, posedge reset) begin
        if (reset) begin
            toggleQ <= 0;
        end else begin
            toggleQprev <= toggleQ;
            toggleQ <= toggleQn;
        end
    end
    
    always @(*) begin
        if (toggle) begin
            AN_Out <= AN_Outs;
            C_Out <= C_Outs;
            outp <= outps;
            toggleQn <= 1;
        end else begin
            AN_Out <= AN_Outt;
            C_Out <= C_Outt;
            outp <= outpt;
            toggleQn <= 0;
        end
        
        if (toggleQprev != toggleQ) begin
            r1 <= 1;
        end else begin
            r1 <= reset;
        end
    end
    
endmodule
