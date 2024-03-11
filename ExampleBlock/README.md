# Example Block

### Block Function
This is a simple example block, which demonstrates how to create a block with an AXI interface. 

The block has two memory registers, 1 and 2. Only Reg1 is writeable. When read, Reg1 should yield the value last written to it, and Reg2 should yield 2 x Reg1.
The multi-purpose LEDs on the ZCU102 eval board are used to display the lowest byte of Reg1.

### Configurable Parameters

| Parameter     | Default Value	          | Function  |
| ------------- | ----------------------- | ------- |
| C_S_AXI_DATA_WIDTH        | 32    | Width in bits of the AXI bus, also width in bits of each data register. Should be in the range 8~32 b for correct operation. |
| C_S_AXI_ADDR_WIDTH        | 11  | Width in bits of the AXI memory addresses. Should be the same across the design. | 

### How to Instantiate
This is a SystemVerilog block with an AXI interface. It may be directly instantiated in a block design.

This block does not require any other blocks. It requires connection to the ZCU102 board LEDs.

### Block Diagram

N/A, contains only one sub-block (axi4lite interface)


### AXI Memory Table 

| Register Name       | Reg Width          | R? | W?   | Function |
| -------------     | -------------------- | ---- | ---- | ------------------------------------ | 
| Reg1       | {C_S_AXI_DATA_WIDTH}    | Y | Y | Try writing any value to this register.  |
| Reg2       | {C_S_AXI_DATA_WIDTH}    | Y | N | When read, this register should display 2x Reg1.  |


### I/O Table 

| Signal Name       | Bit width + direction          | Clock   | I/O Function and connection guidance |
| -------------     | ------------------------------ | ------- | ------------------------------------ | 
| output_leds        | 8b output    | AXI Clk | Outputs the lowest byte of Reg1. This signal should be connected to the ZCU102 Eval Board LEDs |


Note, the AXI bus is always excluded from this table because its presence is assumed by the memory architecture.