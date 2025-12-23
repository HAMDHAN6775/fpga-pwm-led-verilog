## How PWM Works
- A counter increments on every clock cycle
- The counter value is compared with the duty cycle
- If counter < duty_cycle → LED ON
- Else → LED OFF

Higher duty cycle ⇒ Higher brightness.

---

## Simulation & Verification
- The testbench applies multiple duty cycle values
- LED output waveform changes accordingly
- Can be simulated using *Vivado, **ModelSim, or **Icarus Verilog*

---

## Applications
- LED dimming
- Motor speed control
- FPGA-based embedded systems
- Power electronics control

---

## Tools Used
- Verilog HDL
- Vivado / ModelSim

---

## Author
Hamdhan  
ECE Undergraduate
