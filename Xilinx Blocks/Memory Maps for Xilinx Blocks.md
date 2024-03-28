# Memory Maps for Xilinx Blocks 

This file contains memory maps for common Xilinx blocks which you can copy and paste to use in your Spacely-Caribou Memory Map.

As a reminder, the format for mem_map.txt lines is:

*BASE (IP Base Address)

(register name),(Register Address Offset),(bitmask),(Bool Readable?),(Bool Writeable?)

## mem_map.txt for AXI GPIO

Source: https://docs.amd.com/v/u/en-US/pg144-axi-gpio

Note: The mask of 0xFFFFFFFF allows the full width of 32 bits to be controlled via GPIO.

*BASE (IP Base Address)

data,0x0,0xFFFFFFFF,True,True

direction,0x4,0xFFFFFFFF,True,True




