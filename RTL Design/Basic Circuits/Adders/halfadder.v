// Day 2/365

// Half Adder Module in Verilog
// Working my butt off because working constanstly on something everyday makes you better at it. 


module half_adder(
    input A, // First input bit A
    input B, // Second input bit B
    output SUM, // A XOR B or A&(~B) | B&(~A)
    output CARRY // AB
);
    assign{SUM,CARRY} = {A^B, A&B};
endmodule