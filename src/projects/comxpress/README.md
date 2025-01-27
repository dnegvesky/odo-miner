Project for COMXpressSXS10L Stratix 10 FPGA COM Express SOM from reflex ces.

Factory default HPS design must be erased before use.
   1. Using Quartus Programmer, program the FPGA with a non HPS reference design .sof from the BSP to remove the HPS from the JTAG chain.
   2. Select the factory restore .jic file in Quartus programmer, then erase the attached QSPI.
