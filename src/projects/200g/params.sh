#!/bin/bash

# 200G
FAMILY="Stratix 10"
# ES Silicon (requires Quartus Prime Pro v17.1)
DEVICE=1SG280LU3F50E3VGS1
# Production silicon
#DEVICE=1SG280LU2F50E2VG
THROUGHPUT=1
CLK_PIN=PIN_AN27
RST_PIN=PIN_BH25
RST_POLARITY=1
# pll outclk set to 300 MHz
PLL_FILE=pll.ip
# devices with smartVID require additional settings 
if [ $(echo $DEVICE | grep -c "V") -eq 1 ]; then
    PWRMGT_SCL_PIN=SDM_IO0
    PWRMGT_SDA_PIN=SDM_IO12
    CONF_DONE_PIN=SDM_IO16
    PWRMGT_I2C_ADDR=4A
fi
