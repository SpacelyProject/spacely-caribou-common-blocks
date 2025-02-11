
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

### Considerations for Timing Closure

This block operates with two asynchronous clock domains: axi_clk and wave_clk.

#### AXI Read Paths

CDC Paths: read_buffer -> read_channel, sample_count -> axi_rdata, wave_ptr -> axi_rdata

By user contract, read_buffer, sample_count, and wave_ptr may only be safely read over AXI when the APG state is idle. In this situation, the values in the wave_clk domain are static, so no CDC is required. Vivado identifies this as a Clock Enable Controlled CDC structure (CDC-15). Ignore CDC warnings which match the following rules:

SOURCE CONTAINS Arbitrary_Pattern_Generator_int/sample_count_reg AND DEST CONTAINS axi_rdata_reg AND CDC_ID CONTAINS CDC-15
SOURCE CONTAINS Arbitrary_Pattern_Generator_int/read_buffer_reg AND DEST CONTAINS read_channel_reg AND CDC_ID CONTAINS CDC-15
SOURCE CONTAINS Arbitrary_Pattern_Generator_int/wave_ptr_reg AND DEST CONTAINS axi_rdata_reg AND CDC_ID CONTAINS CDC-15

#### AXI Control Paths

CDC Paths: control -> wave_ptr/state, n_samples -> wave_ptr/state, write_buffer -> output_signals

By user contract, the control, n_samples, and write_buffer registers may only be safely edited when the APG state is idle. They must be held static when the wave_clk domain is in the TRANSACTION state, so no CDC is required. Ignore CDC warnings which match the following rules:

SOURCE CONTAINS Arbitrary_Pattern_Generator_interface_inst/fpga_reg_n_samples_reg DEST CONTAINS state_reg
SOURCE CONTAINS Arbitrary_Pattern_Generator_interface_inst/fpga_reg_n_samples_reg DEST CONTAINS wave_ptr_reg
SOURCE CONTAINS Arbitrary_Pattern_Generator_interface_inst/fpga_reg_control_reg DEST CONTAINS state_reg
SOURCE CONTAINS Arbitrary_Pattern_Generator_interface_inst/fpga_reg_control_reg DEST CONTAINS wave_ptr_reg
SOURCE CONTAINS /Arbitrary_Pattern_Generator_int/write_buffer_reg DEST CONTAINS output_signals_reg

#### State and Trigger Paths

Trigger is generated in the AXI domain and crosses to the wave_clk domain to trigger updates in the state of the FSM. The state is then fed back to the AXI domain to determine when it is safe to talk to this block over the AXI and affects storage of the waveforms. Both signals must implement correct CDC. Trigger is a single-bit signal which uses single-bit CDC. State[1:0] is a two-bit signal; to ensure correct simultaneous arrival of these two bits, a custom 2b glitchless CDC is implemented. The Vivado CDC checker is not able to fully verify the correctness of this custom CDC, so we can waive warnings which match the following rules:

SOURCE CONTAINS Arbitrary_Pattern_Generator_int/cdc_state AND DEST CONTAINS Arbitrary_Pattern_Generator_int/cdc_state AND CDC_ID CONTAINS CDC-6


## Configurable Parameters

| Parameter    | Default Value | Function |
|--------------|---------------|----------|
| C_S_AXI_DATA_WIDTH        | 32    | Width in bits of the AXI bus, also width in bits of each data register. Should be in the range 8~32 b for correct operation. |
| C_S_AXI_ADDR_WIDTH        | 11    | Width in bits of the AXI memory addresses. Should be the same across the design. | 
| `NUM_SIG`    | 14           | Defines the number of independent digital signals for output, and for input. This parameter determines the width of the output data bus. Maximum of 32 signals based on current implementation.|
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
|clear| 1 | N | Y | Write "1" to clear stored data in the write buffer |
|write_channel | NUM_SIG | Y | Y | Write waveform data samples to this register in sequential order |
|write_defaults| NUM_SIG | Y | Y | The data sample written to this register represents the state of all outputs when a transaction is not in progress. |
|read_channel | NUM_SIG | Y | N | After transaction is complete, read samples sequentially from this register. |
|async_read_channel | NUM_SIG | Y | N | Allow input signals to be read directly and asynchronously from AXI. |
|sample_count | 32 | Y | N | Running count of the total number of samples acquired by this block since reset (for debug) |
|n_samples | 32 | Y | Y | Write the number of samples to send/receive to this register  |
|write_buffer_len | 32 | Y | N | (Debug) Number of samples stored currently in the write_buffer |
|next_read_sample | 32 | Y | N | (Debug) Index of next sample to be read from the read_buffer |
|wave_ptr | 32 | Y | N | (Debug) current sample index being sent/received |
|status | 3 | Y | N | (Debug) Status = {triggered? (1b), sm_status (2b)}. sm_status = IDLE (0), TRANSACTION (1), or DONE (2) |
|control | 8 | Y | Y | Control register. Bit 0 = Loop (repeat pattern until deasserted); all other bits reserved. |
|dbg_error | 32 | Y | N | DEBUG register. Reports possible timing glitches. Ordinary users should disregard this register, if needed see source code for details. |
|param_NUM_SIG | 32 | Y | N | Yields the actual value of parameter NUM_SIG |
|param_NUM_SAMP | 32 | Y | N | Yields the actual value of parameter NUM_SAMP |


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

clear,0x4,0x1,False,True

write_channel,0x8,0xffffffff,True,True

read_channel,0xc,0xffffffff,True,False

write_defaults,0x10,0xffffffff,True,True

async_read_channel,0x14,0xffffffff,True,False

sample_count,0x18,0xffffffff,True,False

n_samples,0x1c,0xffffffff,True,True

control,0x20,0xff,True,True

write_buffer_len,0x24,0xffffffff,True,False

next_read_sample,0x28,0xffffffff,True,False

wave_ptr,0x2c,0xffffffff,True,False

status,0x30,0x7,True,False

dbg_error,0x34,0xffffffff,True,False

param_NUM_SIG,0x38,0xffffffff,True,False

param_NUM_SAMP,0x3c,0xffffffff,True,False





