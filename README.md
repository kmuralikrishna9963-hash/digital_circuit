# Digital Logic Design & Verification using ModelSim

A collection of combinational logic circuits designed in Verilog HDL and functionally verified using **ModelSim**, developed as part of the **Cognifyz Internship**.

## Overview

This repository demonstrates the design, simulation, and functional verification workflow for three fundamental combinational logic circuits. Each module was implemented in Verilog, tested against its complete truth table using a dedicated testbench, and verified by inspecting the simulation waveform in ModelSim's Wave window.

## Modules Included

| Module | Description | Inputs | Outputs |
|---|---|---|---|
| Half Adder | Adds two 1-bit binary numbers | A, B | Sum, Carry |
| Full Adder | Adds two 1-bit numbers along with a carry-in | A, B, Cin | Sum, Carry |
| 2:1 Multiplexer | Selects one of two inputs based on a select line | I0, I1, Sel | Y |

## Repository Structure

```
ModelSim-Combinational-Logic/
├── README.md
├── docs/
│   └── ModelSim_Project_Documentation.pdf
├── half_adder/
│   ├── half_adder.v
│   ├── half_adder_tb.v
│   └── waveform_half_adder.png
├── full_adder/
│   ├── full_adder.v
│   ├── full_adder_tb.v
│   └── waveform_full_adder.png
└── mux2x1/
    ├── mux2x1.v
    ├── mux2x1_tb.v
    └── waveform_mux2x1.png
```

## Design Summaries

### Half Adder
Combines two single-bit inputs to produce a Sum and a Carry output, without accounting for any carry from a previous stage.

| A | B | Sum | Carry |
|---|---|-----|-------|
| 0 | 0 | 0   | 0     |
| 0 | 1 | 1   | 0     |
| 1 | 0 | 1   | 0     |
| 1 | 1 | 0   | 1     |

### Full Adder
Extends the Half Adder by incorporating a carry-in, allowing multiple adders to be cascaded for multi-bit addition.

| A | B | Cin | Sum | Carry |
|---|---|-----|-----|-------|
| 0 | 0 | 0   | 0   | 0     |
| 0 | 0 | 1   | 1   | 0     |
| 0 | 1 | 0   | 1   | 0     |
| 0 | 1 | 1   | 0   | 1     |
| 1 | 0 | 0   | 1   | 0     |
| 1 | 0 | 1   | 0   | 1     |
| 1 | 1 | 0   | 0   | 1     |
| 1 | 1 | 1   | 1   | 1     |

### 2:1 Multiplexer
Routes one of two input lines to the output based on the value of a single select line.

| Sel | Output Y |
|-----|----------|
| 0   | I0       |
| 1   | I1       |

## Tools and Environment

| Item | Details |
|---|---|
| Simulator | ModelSim |
| HDL | Verilog |
| Design Style | Combinational (dataflow modeling) |
| Verification Method | Testbench-driven stimulus with waveform inspection |

## Verification Approach

Each design module is paired with a testbench that applies all relevant input combinations and monitors the resulting outputs. The simulation waveforms generated in ModelSim were cross-checked against the expected truth table for each module to confirm correct logical behavior across all input cases.

## Documentation

Complete project documentation — including design details, testbench structure, and simulation results — is available in [https://github.com/kmuralikrishna9963-hash/digital_circuit/blob/main/documentation/Documentation_task1.pdf).

## Author

**Murali Krishna**
