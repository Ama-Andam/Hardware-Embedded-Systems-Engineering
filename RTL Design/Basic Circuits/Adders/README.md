# Adders

Some basic digital circuits I'm building out. Started with the theory, then moved to Multisim to actually simulate them and see how they work. This is day 2 of me trying to get better at this everyday.

## Half Adder

This one takes two bits and adds them together. Pretty straightforward - just XOR for the sum and AND for the carry.

**What it does:**
- Sum = A XOR B
- Carry = A AND B

**Testing it out:**

When A=1 and B=0, we get Sum=1 and Carry=0 (makes sense, 1+0=1 with no overflow):
![Half Adder - Input 1,0](Screenshot%202026-01-02%20at%2011.08.24%20PM.png)

When A=1 and B=1, we get Sum=0 and Carry=1 (1+1=10 in binary):
![Half Adder - Input 1,1](Screenshot%202026-01-02%20at%2011.08.52%20PM.png)

## Full Adder

This one's a bit more complex - it takes two input bits AND a carry-in bit. So you can chain them together for multi-bit addition.

**What it does:**
- Sum = A XOR B XOR Cin
- Carry Out = (Cin AND (B OR A)) OR (A AND B)

**Testing it:**

With A=0, B=1, Cin=1, we get Sum=0 and Cout=1 (0+1+1=10 in binary):
![Full Adder - Input 0,1,1](Screenshot%202026-01-02%20at%2011.09.13%20PM.png)

With A=1, B=1, Cin=1, we get Sum=1 and Cout=1 (1+1+1=11 in binary):
![Full Adder - Input 1,1,1](Screenshot%202026-01-02%20at%2011.09.23%20PM.png)

## Files

- `halfadder.v` - Half adder module
- `fulladder.v` - Full adder module  
- `testbench.v` - Tests for both of them

## To Run

Just simulate it with your Verilog tool:
```bash
verilog halfadder.v fulladder.v testbench.v
```

---

**Day 2/365** - Committed to getting better at this one day at a time.
