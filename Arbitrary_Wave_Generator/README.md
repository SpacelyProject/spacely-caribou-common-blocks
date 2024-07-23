
# Arbitrary Pattern Generator Block

## Block Function

This block generates and reads arbitrary digital waveforms at a rate defined by the input clock wave_clk. It can be used to generate arbitrary stimulus patterns for an ASIC, sample ASIC outputs, or both simultaneously.

Operation:
1. If an output pattern is desired, the user writes N samples of data to write_channel.
2. The user writes the length of the transaction (N) to n_samples.
3. The user writes to run, triggering a transaction.
4. The transaction lasts for N cycles; on each cycle the block pulls an output sample from its write buffer (if one exists) and stores a sample of input_signals to its read buffer.
5. When status returns to IDLE (0), the transaction has completed and sampled inputs can be read from the read buffer.
6. The user sequentially reads N times from read_channel to get their samples. 


## Configurable Parameters

| Parameter    | Default Value | Function |
|--------------|---------------|----------|
| C_S_AXI_DATA_WIDTH        | 32    | Width in bits of the AXI bus, also width in bits of each data register. Should be in the range 8~32 b for correct operation. |
| C_S_AXI_ADDR_WIDTH        | 11    | Width in bits of the AXI memory addresses. Should be the same across the design. | 
| `NUM_SIG`    | 8           | Defines the number of independent digital signals for output, and for input. This parameter determines the width of the output data bus. |
| `NUM_SAMP`   | 128           | Specifies the **maximum** number of samples per signal, thereby setting the upper limit for the buffer's capacity. The actual number of samples taken depends on the register n_samples |

## How to Instantiate

Arbitrary_Pattern_Generator_top.v is a verilog wrapper around this block, which allows it to be directly instantiated in a Vivado block diagram, and connected to the main AXI bus. Connect other I/Os as appropriate based on the I/O table below.

Note that this block requires axi4lite_interface_top, which is found in the axi4lite_interface folder of spacely-caribou-common-blocks.


## Block Diagram

(TODO: Create a useful block diagram which includes all the major sub-blocks of this firmware block.

## AXI Memory Table

| Register Name       | Register Width            | R?   | W?   | Function                             |
| -------------       | -------------------- | ---- | ---- | ------------------------------------ |
|run | 1 | N | Y | Write "1" to trigger waveform send/receive transaction |
|write_channel | NUM_SIG | Y | Y | Write waveform data samples to this register in sequential order |
|read_channel | NUM_SIG | Y | N | After transaction is complete, read samples sequentially from this register. |
|sample_count | 32 | Y | N | Running count of the total number of samples acquired by this block since reset (for debug) |
|n_samples | 32 | Y | Y | Write the number of samples to send/receive to this register  |
|write_buffer_len | 32 | Y | N | (Debug) Number of samples stored currently in the write_buffer |
|next_read_sample | 32 | Y | N | (Debug) Index of next sample to be read from the read_buffer |
|wave_ptr | 32 | Y | N | (Debug) current sample index being sent/received |
|status | 3 | Y | N | (Debug) Status = {triggered? (1b), sm_status (2b)}. sm_status = IDLE (0), TRANSACTION (1), or DONE (2) |
|control | 8 | Y | Y | Control register. Bit 0 = Loopback; all other bits reserved. |


### I/O Table 

| Signal Name       | Bit Width + Direction          | Clock   | I/O Function and Connection Guidance |
| -------------     | ------------------------------ | ------- | ------------------------------------ |
|wave_clk| 1b input | wave_clk | This clock controls the speed at which waves are sent/received. Connect to an FPGA clock source. |
|axi_clk| 1b input | axi_clk | Connect to AXI bus clock |
|axi_resetn| 1b input | axi_clk | Connect to AXI bus reset (negative assertion)|
|output_signals| 'NUM_SIG'b output | wave_clk | Output signals from the Arbitrary Pattern Gen|
|input_signals| 'NUM_SIG'b input | wave_clk | Input signals sampled by the Arbitrary Pattern Gen|



Note, the AXI bus is always excluded from this table because its presence is assumed by the memory architecture.

### mem_map.txt

Note: Assumes an AXI data width of 32b

*BASE (IP Base Address)

run,0x0,0x1,False,True

write_channel,0x4,0xff,True,True

read_channel,0x8,0xff,True,False

sample_count,0xc,0xffffffff,True,False

n_samples,0x10,0xffffffff,True,True

control,0x14,0xff,True,True

write_buffer_len,0x18,0xffffffff,True,False

next_read_sample,0x1c,0xffffffff,True,False

wave_ptr,0x20,0xffffffff,True,False

status,0x24,0x7,True,False




