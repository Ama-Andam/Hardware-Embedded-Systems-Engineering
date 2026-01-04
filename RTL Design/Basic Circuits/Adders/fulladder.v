// Day 2/365

// Full Adder Module in Verilog
// Working my butt off because working constanstly on something everyday makes you better at it. 


module full_adder(
    input A, // First input bit A
    input B, // Second input bit B
    input Cin, // Carry input
    output S, // Sum output
    output Cout // Carry output
    
);
    assign {S,Cout} = {A^B^Cin, Cin&(B|A) | A&B};
endmodule
