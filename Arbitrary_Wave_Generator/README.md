
# Arbitrary Pattern Generator Block (NOT YET IMPLEMENTED!!)

## Block Function

This block is engineered to generate and read arbitrary digital waveforms at high speed, making it perfect for testing various ASICs. It uniquely supports simultaneous operation of output and input channels, allowing for dynamic testing environments where the block writes out signals on channels 1,2,3 while reading in lockstep from channels 4,5,6, etc.

## Configurable Parameters

| Parameter    | Default Value | Function |
|--------------|---------------|----------|
| `NUM_SIG`    | TBD           | Defines the number of independent digital signals for output. This parameter determines the width of the output data bus. |
| `NUM_SAMP`   | TBD           | Specifies the **maximum** number of samples per signal, thereby setting the upper limit for the buffer's capacity. The actual operation duration depends on the number of samples written to the "Write Channel." |

## How to Instantiate

This SystemVerilog block features an AXI interface and can be instantiated directly within a block design. Designed for flexible integration, it requires no additional modules for its signal generation and reading capabilities, simplifying connections for both functionalities.

## Block Diagram

N/A, comprises the main pattern generator block with an AXI4-Lite interface, supplemented by logic for both read and write functionalities.

## AXI Memory Table

| Register Name    | Reg Width                | R? | W? | Function |
|------------------|--------------------------|----|----|----------|
| Run Register     | 1                        | N  | Y  | Triggers the start of waveform generation and reading. |
| Done Register    | 1                        | Y  | N  | Signals the completion of both output and input signal processing. |
| Write Channel    | `W` bits for output| N  | Y  | Data Buffer which holds waveform data for output on channels 1,2,3, etc. |
| Samples Written  | log2(`NUM_SAMP`)         | Y  | Y  | Records the number of samples loaded for output. |
| Read Channel     | `R` bits for input | Y  | N  | Captures input signals read in lockstep with output from channels 4,5,6, etc. |

## I/O Table

| Signal Name       | Bit width + direction    | Clock   | I/O Function and connection guidance |
|-------------------|--------------------------|---------|--------------------------------------|
| `output_signals`  | `NUM_SIG`b output        | AXI Clk | For outputting generated waveform signals on channels 1,2,3, etc. Connect to target ASICs for testing. |
| `input_signals`   | `NUM_SIG`b input         | AXI Clk | For reading input signals in sync with output on channels 4,5,6, etc. |

## Getting Started

1. Set `NUM_SIG` and `NUM_SAMP` according to your testing requirements.
2. Load waveform data into the "Write Channel."
3. Initiate waveform generation and signal reading by writing '1' to the "Run Register."
4. Monitor the "Done Register" to determine when the operation completes and consult the "Samples Written" register to verify the number of samples processed.
5. Review the "Read Channel" to analyze the input signals captured during the operation.

