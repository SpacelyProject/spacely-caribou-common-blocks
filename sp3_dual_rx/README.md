# sp3_dual_rx

### Block Function
This block is a high-speed receiver built for the SPROCKET3 ASIC / SParkDream demonstration. It splits a 10.24 Gb/s data stream received over an SFP receiver into two dataframes which are processed independently by two lpgbt-derived Rx decoders (see SP3_Demux.sv)

### Configurable Parameters

| Parameter     | Default Value	          | Function  |
| ------------- | ----------------------- | ------- |
| C_S_AXI_DATA_WIDTH        | 32    | Width in bits of the AXI bus, also width in bits of each data register. Should be in the range 8~32 b for correct operation. |
| C_S_AXI_ADDR_WIDTH        | 11    | Width in bits of the AXI memory addresses. Should be the same across the design. | 


### How to Instantiate
sp3_dual_rx_top.v is a verilog wrapper around this block, which allows it to be directly instantiated in a Vivado block diagram, and connected to the main AXI bus. Connect other I/Os as appropriate based on the I/O table below.

Note that this block requires axi4lite_interface_top, which is found in the axi4lite_interface folder of spacely-caribou-common-blocks.

**NOTE:** This block also requires the inclusion of the following files from the lpGBT common block:
- /lpGBT/lpgbt-fpga/lpgbtfpga_uplink.vhd
- /lpGBT/lpgbt-fpga/lpgbtfpga_package.vhd
- /lpGBT/lpgbt-fpga/uplink/*


### Block Diagram
(TODO: Create a useful block diagram which includes all the major sub-blocks of this firmware block.)

### AXI Memory Table 

| Register Name       | Register Width            | R?   | W?   | Function                             |
| -------------       | -------------------- | ---- | ---- | ------------------------------------ |
|mgt_rxpolarity_i | 1 | Y | Y | Set the polarity of the MGT receiver. |
|uplinkRst_i | 1 | Y | Y | Reset for the MGT (and thereby the entire uplink). |
|interleaverBypass | 1 | Y | Y | Set to bypass the (de)interleaver when the interleaver is bypassed on the ASIC. |
|fecBypass | 1 | Y | Y | Set to bypass the FEC (de)coder when the FEC encoder is bypassed on the ASIC.|
|scramblerBypass | 1 | Y | Y | Set to bypass the (de)scrambler when the scrambler is bypassed on the ASIC. |
|pulse_bitslip_a | 1 | N | Y | Write to this register to pulse the bitslip control for channel A. |
|pulse_bitslip_b | 1 | N | Y | Write to this register to pulse the bitslip control for channel B. |
|status | 16 | Y | N | Status of the sp3_dual_rx receiver. See bit mapping below. |

status[0] = Channel A Ready
status[1] = Channel B Ready
status[2] = MGT Ready
status[3:7] = Reserved


### I/O Table 

| Signal Name       | Bit Width + Direction          | Clock   | I/O Function and Connection Guidance |
| -------------     | ------------------------------ | ------- | ------------------------------------ |
|SFP0_RX_P| 1b input | 10.24G | Input data from SFP Rx (Pos)|
|SFP0_RX_N| 1b input | 10.24G | Input data from SFP Rx (Neg)|
|SMA_MGT_REFCLK_P| 1b input | MGT_REFCLK | Input 320 MHz refclk (Pos) |
|SMA_MGT_REFCLK_N| 1b input | MGT_REFCLK | Input 320 MHz refclk (Neg) |
|USER_CLOCK_P| 1b input | MGT_FREEDRP | Input free-running reference clock (Pos)|
|USER_CLOCK_N| 1b input | MGT_FREEDRP | Input free-running reference clock (Neg)|
|clk20_o| 1b output | clk20 | Output 20 MHz clock, synchronized to the data frames. |
|uplinkrdy_a_o| 1b output | clk20 | Asserted when the uplink data path for channel A is ready (data can be read) |
|uplinkFEC_a_o| 1b output | clk20 | Asserted when the UserData frame from channel A contains a (corrected) FEC error. |
|uplinkUserData_a| 234b output | clk20 | User data frame received over channel A.|
|uplinkrdy_b_o| 1b output | clk20 | Asserted when the uplink data path for channel B is ready (data can be read)|
|uplinkFEC_b_o| 1b output | clk20 | Asserted when the UserData frame from channel B contains a (corrected) FEC error.|
|uplinkUserData_b| 234b output | clk20 | User data frame received over channel B.|



Note, the AXI bus is always excluded from this table because its presence is assumed by the memory architecture.

### mem_map.txt

Note: Assumes an AXI data width of 32b

*BASE (IP Base Address)

mgt_rxpolarity_i,0x0,0x1,True,True

uplinkRst_i,0x4,0x1,True,True

interleaverBypass,0x8,0x1,True,True

fecBypass,0xc,0x1,True,True

scramblerBypass,0x10,0x1,True,True

pulse_bitslip_a,0x14,0x1,False,True

pulse_bitslip_b,0x18,0x1,False,True

status,0x1c,0xffff,True,False
