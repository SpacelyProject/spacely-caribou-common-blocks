# dr_gth

### Block Function
(TODO: Please write a paragraph describing the intended function of this firmware block. Make sure you describe all the major sub-blocks with enough detail that someone could read the firmware and easily understand your intent.)

### Configurable Parameters

| Parameter     | Default Value	          | Function  |
| ------------- | ----------------------- | ------- |
| C_S_AXI_DATA_WIDTH        | 32    | Width in bits of the AXI bus, also width in bits of each data register. Should be in the range 8~32 b for correct operation. |
| C_S_AXI_ADDR_WIDTH        | 11    | Width in bits of the AXI memory addresses. Should be the same across the design. | 


### How to Instantiate
dr_gth_top.v is a verilog wrapper around this block, which allows it to be directly instantiated in a Vivado block diagram, and connected to the main AXI bus. Connect other I/Os as appropriate based on the I/O table below.

Note that this block requires axi4lite_interface_top, which is found in the axi4lite_interface folder of spacely-caribou-common-blocks.


### Block Diagram
(TODO: Create a useful block diagram which includes all the major sub-blocks of this firmware block.)

### AXI Memory Table 

| Register Name       | Register Width            | R?   | W?   | Function                             |
| -------------       | -------------------- | ---- | ---- | ------------------------------------ |
|RX_RESET_i | 1 | Y | Y | (TODO: What is the function of this register?) |
|drp_addr | 9 | Y | Y | (TODO: What is the function of this register?) |
|drp_di | 16 | Y | Y | (TODO: What is the function of this register?) |
|drp_do | 16 | Y | N | (TODO: What is the function of this register?) |
|drp_rst | 1 | Y | Y | (TODO: What is the function of this register?) |
|drp_we | 1 | Y | Y | (TODO: What is the function of this register?) |
|drp_trigger | 1 | N | Y | (TODO: What is the function of this register?) |



### I/O Table 

| Signal Name       | Bit Width + Direction          | Clock   | I/O Function and Connection Guidance |
| -------------     | ------------------------------ | ------- | ------------------------------------ |
|RX_P| 1b input | (TODO: What clock domain is this I/O in?) | (TODO: What is the function of this I/O and what should it be connected to?)|
|RX_N| 1b input | (TODO: What clock domain is this I/O in?) | (TODO: What is the function of this I/O and what should it be connected to?)|
|REFCLK_p| 1b input | (TODO: What clock domain is this I/O in?) | (TODO: What is the function of this I/O and what should it be connected to?)|
|REFCLK_n| 1b input | (TODO: What clock domain is this I/O in?) | (TODO: What is the function of this I/O and what should it be connected to?)|
|FREEDRPCLK_p| 1b input | (TODO: What clock domain is this I/O in?) | (TODO: What is the function of this I/O and what should it be connected to?)|
|FREEDRPCLK_n| 1b input | (TODO: What clock domain is this I/O in?) | (TODO: What is the function of this I/O and what should it be connected to?)|
|DIVCLK_o| 1b output | (TODO: What clock domain is this I/O in?) | (TODO: What is the function of this I/O and what should it be connected to?)|
|USER_DATA_o| 32b output | (TODO: What clock domain is this I/O in?) | (TODO: What is the function of this I/O and what should it be connected to?)|
|RX_WORDCLK_o| 1b output | (TODO: What clock domain is this I/O in?) | (TODO: What is the function of this I/O and what should it be connected to?)|
|dmonitor_data| 16b output | (TODO: What clock domain is this I/O in?) | (TODO: What is the function of this I/O and what should it be connected to?)|



Note, the AXI bus is always excluded from this table because its presence is assumed by the memory architecture.

### mem_map.txt

Note: Assumes an AXI data width of 32b

*BASE (IP Base Address)

RX_RESET_i,0x0,0x1,True,True

drp_addr,0x4,0x1ff,True,True

drp_di,0x8,0xffff,True,True

drp_do,0xc,0xffff,True,False

drp_rst,0x10,0x1,True,True

drp_we,0x14,0x1,True,True

drp_trigger,0x18,0x1,False,True



