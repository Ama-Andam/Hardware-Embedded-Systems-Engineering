// Day 2/365

// Working my butt off because working constanstly on something everyday makes you better at it. 
// Adders in Verilog (A Full Adder and a Half Adder)

`timescale 1ps/1ps

module testbench;
    reg A; // First input bit A
    reg B; // Second input bit B
    reg Cin; // Carry input for full adder
    wire SUM; // Sum output for half adder
    wire CARRY; // Carry output for half adder
    wire S; // Sum output for full adder
    wire Cout; // Carry output for full adder

    // Instantiate Half Adder
    half_adder ha (
        .A(A),
        .B(B),
        .SUM(SUM),
        .CARRY(CARRY)
    );

    // Instantiate Full Adder
    full_adder fa (
        .A(A),
        .B(B),
        .Cin(Cin),
        .S(S),
        .Cout(Cout)
    );
    
    integer i;
    initial begin
        // Test all combinations of inputs for half adder
        $display("Half Adder Test:");
        A = 0; B = 0; #10;
        $display("A=%b B=%b | SUM=%b CARRY=%b", A, B, SUM, CARRY);
        A = 0; B = 1; #10;
        $display("A=%b B=%b | SUM=%b CARRY=%b", A, B, SUM, CARRY);
        A = 1; B = 0; #10;
        $display("A=%b B=%b | SUM=%b CARRY=%b", A, B, SUM, CARRY);
        A = 1; B = 1; #10;
        $display("A=%b B=%b | SUM=%b CARRY=%b", A, B, SUM, CARRY);

        // Test all combinations of inputs for full adder
        $display("\nFull Adder Test:");
        for (i = 0; i < 8; i = i + 1) begin
            {A, B, Cin} = i; #10;
            $display("A=%b B=%b Cin=%b | S=%b Cout=%b", A, B, Cin, S, Cout);
        end

        $finish;
    end
endmodule