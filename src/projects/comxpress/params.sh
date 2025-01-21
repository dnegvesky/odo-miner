#!/bin/bash

# comxpress
FAMILY="Stratix 10"
DEVICE=1SX280LN3F43E2VG
THROUGHPUT=1
CLK_PIN=PIN_AD6
RST_PIN=PIN_AC8
RST_POLARITY=0
# pll outclk set to 290 MHz
PLL_FILE=pll.ip
# devices with smartVID require additional settings 
if [ $(echo $DEVICE | grep -c "V") -eq 1 ]; then
    PWRMGT_SCL_PIN=SDM_IO14
    PWRMGT_SDA_PIN=SDM_IO11
    CONF_DONE_PIN=SDM_IO16
    PWRMGT_I2C_ADDR=4A
fi
