# sync_counter

### Block Function
The function of this block is to count the duty cycle of two synchronous signals in the same clock domain. The block contains two counters which are driven from tclk. Counter_a increments when enable_a is asserted, and Counter_b increments when enable_b is asserted.
To capture the value of these counters, write a "1" to the register called "snapshot." A snapshot of these two counters will be stored in AXI registers for readout, and held until a "0" is written to "snapshot."

### Configurable Parameters

| Parameter     | Default Value	          | Function  |
| ------------- | ----------------------- | ------- |
| C_S_AXI_DATA_WIDTH        | 32    | Width in bits of the AXI bus, also width in bits of each data register. Should be in the range 8~32 b for correct operation. |
| C_S_AXI_ADDR_WIDTH        | 11    | Width in bits of the AXI memory addresses. Should be the same across the design. | 
|COUNTER_A_BITS | 32 | How many bits should be in Counter_a (max 32) |
|OFFSET_A_BITS | 0 | The LSB of Counter_a will have a value of 2^(OFFSET_A_BITS) counts |
|COUNTER_B_BITS | 32 | How many bits should be in Counter_b (max 32) |
|OFFSET_B_BITS | 0 | The LSB of Counter_b will have a value of 2^(OFFSET_B_BITS) counts |


### How to Instantiate
sync_counter_top.v is a verilog wrapper around this block, which allows it to be directly instantiated in a Vivado block diagram, and connected to the main AXI bus. Connect other I/Os as appropriate based on the I/O table below.

Note that this block requires axi4lite_interface_top, which is found in the axi4lite_interface folder of spacely-caribou-common-blocks.


### Block Diagram
(TODO: Create a useful block diagram which includes all the major sub-blocks of this firmware block.)

### AXI Memory Table 

| Register Name       | Register Width            | R?   | W?   | Function                             |
| -------------       | -------------------- | ---- | ---- | ------------------------------------ |
|reset | 1 | Y | Y | When this register has a value of "1", the counters are held in reset. |
|snapshot | 1 | Y | Y | When this register has a value of "1" a snapshot of the counter values are captured and stored in counter_a_result / counter_b_result until a "0" is written to the register.|
|counter_a_result | COUNTER_A_BITS | Y | N | This register holds the result of snapshots of Counter_a. |
|counter_b_result | COUNTER_B_BITS | Y | N | This register holds the result of snapshots of Counter_b. |
|param_COUNTER_A_BITS | 32 | Y | N | Yields the actual value of parameter COUNTER_A_BITS |
|param_OFFSET_A_BITS | 32 | Y | N | Yields the actual value of parameter OFFSET_A_BITS |
|param_COUNTER_B_BITS | 32 | Y | N | Yields the actual value of parameter COUNTER_B_BITS |
|param_OFFSET_B_BITS | 32 | Y | N | Yields the actual value of parameter OFFSET_B_BITS |



### I/O Table 

| Signal Name       | Bit Width + Direction          | Clock   | I/O Function and Connection Guidance |
| -------------     | ------------------------------ | ------- | ------------------------------------ |
|axi_clk| 1b input | AXI Clk | Connect to global AXI clock. |
|tclk| 1b input | tclk | This is the clock which increments both counters. |
|enable_a| 1b input | tclk) | When this synchronous signal is high, Counter_a will increment on the positive edge of tclk. |
|enable_b| 1b input | tclk | When this synchronous signal is high, Counter_b will increment on the positive edge of tclk. |



Note, the AXI bus is always excluded from this table because its presence is assumed by the memory architecture.

### mem_map.txt

Note: Assumes an AXI data width of 32b

*BASE (IP Base Address)

reset,0x0,0x1,True,True

snapshot,0x4,0x1,True,True

counter_a_result,0x8,0xffffffff,True,False

counter_b_result,0xc,0xffffffff,True,False

param_COUNTER_A_BITS,0x10,0xffffffff,True,False

param_OFFSET_A_BITS,0x14,0xffffffff,True,False

param_COUNTER_B_BITS,0x18,0xffffffff,True,False

param_OFFSET_B_BITS,0x1c,0xffffffff,True,False

**Note:** The following registers have parameterizable size: counter_a_result, counter_b_result.  In this memory map, 32b are reserved for each of these registers, the maximum allowed with a standard Spacely-Caribou AXI bus.

