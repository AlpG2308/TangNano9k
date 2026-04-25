# FPGA Wrapper Projects — Tang Nano 9K

A structured collection of small FPGA experiments, starting simple and gradually increasing in complexity.
Each project is intentionally minimal, focused, and designed to build intuition for digital hardware design.

> Think of this repository as a gym: small reps, clean form, incremental overload with distractions from time to time.

---

## 📦 Project00 — LED Control (Shift Register Basics)

**Objective**
Introduce fundamental FPGA concepts using a minimal, observable system:

* Verilog-based design
* Basic synchronous logic
* Shift register operations
* Button-driven state changes

**Behavior**

* **BTN_1** → Shift left, insert `1` (turn on next LED)
* **BTN_2** → Shift right, insert `0` (turn off last LED)

```verilog
leds <= {leds[4:0], 1'b1};  // push
leds <= {1'b0, leds[5:1]};  // pop
```

**Concepts covered**

* Register-based state
* Edge detection (button handling)
* Mapping state directly to outputs
* Deterministic timing via clocked logic

---

## 🛠 Toolchain (Current)

* **Gowin EDA**
* **Tang Nano 9K**
* Verilog

In this of the journey, we will be the vendor provided Gowin EDA.
This will speed up and structure our learning process.
1. Easy Entry
2. Fast Iteration
3. Easy accesibilty


---

## 🧭 Roadmap

### Phase 1 — Foundations *(current)*

* Basic Verilog modules
* Shift registers
* Simple I/O interaction

---

### Phase 2 — Structured Design

* Finite State Machines (FSMs)
* Input debouncing
* Clock division and timing control

---

### Phase 3 — Open Toolchain Migration

* Yosys (synthesis)
* nextpnr (place & route)

> Goal: reproducible, scriptable builds without vendor lock-in

---

### Phase 4 — Applied Systems

* UART communication
* Streaming data pipelines
* Real-time signal processing
* Display interfaces (e.g., HDMI)

---

## 📁 Repository Structure

```
wrapper/
├── Project00_led_shift/ (contraints, gowin project file, verilog source)
└── README.md

---

## 🧪 Design Principles

* Keep designs **small and testable**
* Prefer **explicit hardware behavior** over abstraction
* Build **understanding** incrementally
* Optimize for understanding, cleverness can be introduced later

---

## ⚠️ Notes

* Build artifacts are excluded.
* Code is currently written based on ease of implementation. 
* Toolchain will evolve with my skills, from vendor lock to open source.

---

## 🧠 Perspective

The current system:

> Button → Register → LED

The long-term direction:

> External signals → Processing pipeline → Structured output

Same FPGA just better and actually useful code.

---

## 💬 Final Remark

We start with LEDs but we most certainly wont end there.

Master Walking, before running a marathon in a handstand.

---

