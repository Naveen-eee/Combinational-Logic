# 🧠 Verilog Combinational Logic Suite

A comprehensive collection of Verilog HDL implementations of fundamental combinational logic circuits, developed as part of my FPGA and Digital Design learning journey. This repository includes synthesizable RTL modules, self-checking testbenches, simulation waveforms, and verification results.

---

## 📌 Project Overview

This project focuses on implementing the core combinational building blocks used in digital systems using **Verilog HDL**. Each module is designed, simulated, and verified independently before progressing to more complex hierarchical designs.

The repository demonstrates:

- RTL Design using Verilog HDL
- Structural, Dataflow, and Behavioral Modeling
- Self-Checking Testbenches
- Functional Simulation
- Waveform Verification
- Hierarchical Design

---

## 🛠️ Tools Used

- **Language:** Verilog HDL
- **Simulator:** ModelSim
- **Synthesis Tool:** Intel Quartus Prime Lite 18.1
- **Platform:** Windows 11

---

## 📂 Repository Structure

```
Verilog-Combinational-Logic-Suite/
│
├── AND_Gate/
├── OR_Gate/
├── XOR_Gate/
├── XNOR_Gate/
├── NOT_Gate/
├── NAND_Gate/
├── NOR_Gate/
│
├── Multiplexer_2x1/
├── Multiplexer_4x1/
├── Demultiplexer_1x4/
│
├── Decoder_2x4/
├── Encoder_4x2/
│
├── Half_Adder/
├── Full_Adder/
├── Ripple_Carry_Adder_4bit/
│
├── Waveforms/
└── README.md
```

---

# ✅ Modules Implemented

| No. | Module | Modeling Style | Status |
|----:|---------|----------------|:------:|
| 1 | AND Gate | Dataflow | ✅ |
| 2 | OR Gate | Dataflow | ✅ |
| 3 | XOR Gate | Dataflow | ✅ |
| 4 | XNOR Gate | Dataflow | ✅ |
| 5 | NOT Gate | Dataflow | ✅ |
| 6 | NAND Gate | Dataflow | ✅ |
| 7 | NOR Gate | Dataflow | ✅ |
| 8 | 2:1 Multiplexer | Dataflow | ✅ |
| 9 | 4:1 Multiplexer | Behavioral | ✅ |
|10 | 1:4 Demultiplexer | Behavioral | ✅ |
|11 | 2:4 Decoder | Dataflow | ✅ |
|12 | 4:2 Encoder | Dataflow | ✅ |
|13 | Half Adder | Dataflow | ✅ |
|14 | Full Adder | Structural | ✅ |
|15 | 4-bit Ripple Carry Adder | Structural | ✅ |

---

# 📖 Design Methodology

Each module follows a structured workflow:

1. Design RTL
2. Functional verification
3. Self-checking Testbench
4. Simulation in ModelSim
5. Waveform Analysis
6. Design Review

---

# 🧪 Verification

Every module is verified using dedicated testbenches.

Verification includes:

- Functional correctness
- Truth table validation
- Boundary conditions
- Directed test vectors
- PASS/FAIL reporting
- Waveform inspection

---

# 🏗️ Hierarchical Design

The 4-bit Ripple Carry Adder is implemented hierarchically.

```
Ripple Carry Adder
        │
        ├── Full Adder ×4
        │       │
        │       ├── Half Adder ×2
        │       └── OR Gate
        │
        └── Carry Ripple Chain
```

This demonstrates modular design and reusable hardware blocks.

---

# 📊 Learning Outcomes

Through this project, I gained practical experience in:

- Verilog HDL
- Combinational Logic Design
- Structural Modeling
- Behavioral Modeling
- Dataflow Modeling
- Hierarchical Design
- Testbench Development
- Functional Verification
- Waveform Debugging
- FPGA Design Flow

---

# 🚀 Future Enhancements

Planned additions include:

- Comparator
- Code Converters
- Parity Generator
- Priority Encoder
- Carry Look-Ahead Adder (CLA)
- Arithmetic Logic Unit (ALU)
- Sequential Logic Modules

---

# 📸 Simulation

Each module includes:

- RTL Source Code
- Self-Checking Testbench
- Simulation Waveform
- Verification Results

---

# 👨‍💻 Author

**Naveen A**

BE Electrical and Electronics Engineering

BIT 

---

# 📜 License

This repository is intended for educational and learning purposes. Feel free to explore, learn, and build upon the designs with appropriate attribution.

---

⭐ If you found this repository useful, consider giving it a **Star**.
