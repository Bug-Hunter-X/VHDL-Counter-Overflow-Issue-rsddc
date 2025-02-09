# VHDL Counter with Overflow Handling

This repository demonstrates a common coding error in VHDL involving counter overflow and its solution.

## The Bug

The `buggy_counter.vhd` file contains a simple counter that increments on each clock cycle. However, it contains a subtle issue related to how it handles the maximum count value. When the counter reaches its maximum value (15), it resets to 0.  This might be unintended behavior if you need to detect the overflow condition or handle it differently (e.g., saturating the counter).

## The Solution

The solution addresses this issue by explicitly detecting the overflow condition and providing an alternative approach. `buggy_counter_solution.vhd` demonstrates a more robust implementation.

## How to Use

1. Clone this repository.
2. Simulate both files using your preferred VHDL simulator (e.g., ModelSim, GHDL, Vivado).
3. Compare the behavior of both counters to observe the effects of the bug and its solution.