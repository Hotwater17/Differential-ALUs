/*
 * File: tb.sv
 * Author: Michal Gorywoda
 * Created Date: March 7th 2025
 * 
 * Copyright (c) 2025 Michal Gorywoda, KAIST SEED Lab
 */

module tb();


/* ------------------------------ Inputs to DUT ----------------------------- */
logic in;
logic clk;
logic resetn;

/* ---------------------------- Outputs from DUT ---------------------------- */
wire out;


/* ------------------------------ DUT Instantiation ----------------------------- */

DUT uut(
    .in(in),
    .out(out)
);

/* ------------------------------ Clock Generation ----------------------------- */
always #(5) begin
    clk = ~clk;
end

initial begin
    clk = 1'b1;
    resetn = 1'b1;
    in = 1'b0;

    #10;
    resetn = 1'b0;

    #10; 
    resetn = 1'b1;
    #10;
    

    $finish;
end

endmodule
