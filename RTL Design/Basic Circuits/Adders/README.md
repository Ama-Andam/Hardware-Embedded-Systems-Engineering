# Adders - RTL Design Implementation

A collection of digital arithmetic circuits implemented in Verilog. This project documents my learning journey in digital design and hardware development through daily practice.

## Circuits Implemented

### Half Adder
A combinational circuit that adds two single-bit binary numbers.

**Logic:**
- **Sum** = A XOR B
- **Carry** = A AND B

**Test Results:**

#### Test Case 1: A=1, B=0
Expected: Sum=1, Carry=0
![Half Adder Test 1](Screenshot%202026-01-02%20at%2011.08.24%20PM.png)

#### Test Case 2: A=1, B=1
Expected: Sum=0, Carry=1
![Half Adder Test 2](Screenshot%202026-01-02%20at%2011.08.52%20PM.png)

---

### Full Adder
An extension of the half adder that accepts a carry-in bit in addition to two input bits.

**Logic:**
- **Sum** = A XOR B XOR Cin
- **Carry Out** = (Cin AND (B OR A)) OR (A AND B)

**Test Results:**

#### Test Case 1: A=0, B=1, Cin=1
Expected: Sum=0, Cout=1
![Full Adder Test 1](Screenshot%202026-01-02%20at%2011.09.13%20PM.png)

#### Test Case 2: A=1, B=1, Cin=1
Expected: Sum=1, Cout=1
![Full Adder Test 2](Screenshot%202026-01-02%20at%2011.09.23%20PM.png)

---

## Files

- `halfadder.v` - Half adder module implementation
- `fulladder.v` - Full adder module implementation
- `testbench.v` - Testbench for simulating both adders

## How to Run

Compile and simulate using your preferred Verilog simulator (ModelSim, Vivado, etc.):

```bash
verilog halfadder.v fulladder.v testbench.v
```

## Learning Notes

This project is part of my #365DaysOfLearning challenge. By practicing daily, I'm building a solid foundation in:
- Digital logic design
- RTL (Register Transfer Level) modeling
- Hardware simulation and verification
- Version control and project documentation

Each commit represents a day of focused practice and continuous improvement.

---

**Last Updated:** January 2, 2026
