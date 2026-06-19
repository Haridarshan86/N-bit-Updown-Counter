# 🔼🔽 4-Bit Up/Down Counter using Verilog HDL

## 📖 Overview

This project implements a **4-bit Synchronous Up/Down Counter** using **Verilog HDL**. The counter increments or decrements its value on each positive edge of the clock depending on the state of the control signal (`up_down`).

- `up_down = 1` → Counter counts upward.
- `up_down = 0` → Counter counts downward.
- `reset = 1` → Counter resets to zero.

The design is verified using a testbench and simulated in Vivado.

---

## 🎯 Objective

- Design a 4-bit synchronous Up/Down Counter.
- Implement the design using Verilog HDL.
- Simulate and verify the functionality.
- Understand sequential logic and counter operations.

---

## 🛠️ Tools Used

- Verilog HDL
- Xilinx Vivado
- GitHub

---

## 📂 Project Structure

```text
4-Bit-UpDown-Counter/
│
├── updowncounter.v
├── updowncounter_tb.v
├── screenshots/
│   └── waveform.png
└── README.md
```

---

## 📋 Module Description

### Inputs

| Signal | Description |
|---------|-------------|
| clk | Clock Signal |
| reset | Asynchronous Reset |
| up_down | Direction Control (1 = Up, 0 = Down) |

### Output

| Signal | Description |
|---------|-------------|
| count[3:0] | 4-bit Counter Output |

---

## ⚙️ Working Principle

### Reset Operation

When the reset signal is high, the counter value becomes:

```verilog
count <= 4'b0000;
```

### Up Counting Mode

When `up_down = 1`, the counter increments on every rising edge of the clock.

```verilog
count <= count + 1;
```

### Down Counting Mode

When `up_down = 0`, the counter decrements on every rising edge of the clock.

```verilog
count <= count - 1;
```

---

## 💻 Verilog Design Code

```verilog
module updowncounter(
    input clk,
    input reset,
    input up_down,
    output reg [3:0] count
);

always @(posedge clk or posedge reset)
begin
    if (reset)
        count <= 4'b0000;
    else if (up_down)
        count <= count + 1;
    else
        count <= count - 1;
end

endmodule
```

---

## 🧪 Testbench

The testbench performs:

- Clock generation
- Reset verification
- Up-count verification
- Down-count verification
- Simulation monitoring

---

## 📈 Expected Output

### Up Counter Mode

```text
0000
0001
0010
0011
0100
0101
0110
...
```

### Down Counter Mode

```text
0110
0101
0100
0011
0010
0001
0000
1111
...
```

---

## 📸 Simulation Waveform

Add your waveform screenshot in the `screenshots` folder and update the path below:

```markdown
![Waveform](screenshots/waveform.png)
```

---

## 🔍 Truth Table

| Reset | Up_Down | Counter Operation |
|--------|----------|------------------|
| 1 | X | Reset to 0000 |
| 0 | 1 | Count Up |
| 0 | 0 | Count Down |

---

## 🚀 Applications

- Digital Clocks
- Event Counters
- Frequency Counters
- FPGA-Based Systems
- Embedded Applications
- Digital Control Systems

---

## 📚 Learning Outcomes

- Understanding sequential circuits
- Designing synchronous counters
- Verilog behavioral modeling
- Writing and debugging testbenches
- FPGA design workflow

---

## 👨‍💻 Author

**Haridarshan B Kunder**

Electronics & Communication Engineering  
NMAM Institute of Technology, Nitte

GitHub: https://github.com/Haridarshan86

---

⭐ If you found this project useful, consider giving the repository a star!
