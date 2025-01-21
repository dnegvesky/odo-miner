#!/bin/bash

# Sargon
FAMILY="Stratix 10"
# ES Silicon (supported in Quartus Prime Pro v19.3)
DEVICE=1SG280HU1F50E2VGS1
THROUGHPUT=1
CLK_PIN=PIN_U24
RST_PIN=PIN_L24
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
