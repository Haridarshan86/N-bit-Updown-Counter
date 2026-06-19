# 🔼🔽 4-Bit Up/Down Counter using Verilog HDL

## 📖 Overview

This project implements a **4-bit Synchronous Up/Down Counter** using **Verilog HDL**. The counter increments or decrements its value on each positive edge of the clock depending on the state of the control signal (`up_down`).

- `up_down = 1` → Counter counts upward.
- `up_down = 0` → Counter counts downward.
- `reset = 1` → Counter resets to zero.


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

<img width="1626" height="857" alt="image" src="https://github.com/user-attachments/assets/732cff39-68a2-4f6d-b904-94cd699e247f" />

---

## 🔍 Truth Table
<img width="1208" height="527" alt="image" src="https://github.com/user-attachments/assets/1500c059-dca9-4b5f-bdac-34030be2a572" />


---

⭐ If you found this project useful, consider giving the repository a star!
