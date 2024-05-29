# Guide to using Nordic boards:

Devboard is 'nrf5340df_nrf5340_cpuapp' [Pinout](https://devzone.nordicsemi.com/f/nordic-q-a/81286/the-pinout-of-nrf5340)
MilliMobile is 'nrf52840dongle_nrf52840'

# Set Up and Guide

### Installing Nordic Tools

First, install [nrf Connect for VS Code](https://www.nordicsemi.com/Products/Development-tools/nRF-Connect-for-VS-Code) and [nrf CLI](https://www.nordicsemi.com/Products/Development-tools/nRF-Command-Line-Tools/Download). 

This should add an additional button on the left vertical bar that looks like a chain.

Next, hit 'manage toolchains' and install a toolchain (v2.6.1 works for me).

Repeat with SDK (v2.6.0 works for me).

You may also need to install [JLINK](https://www.segger.com/downloads/jlink/). It may prompt you when you try flashing. 

### Using the ADC Pins

In your '.overlay' file, you can define '&adc' channels. The template should be easily configurable -- note that 'AIN0' from '<NRF_SAADC_AIN0>' refers to P0.04 that is inked on the nrf dev board. The 'AIN0' corresponds to the pinout of the [Arduino DUE](https://devzone.nordicsemi.com/f/nordic-q-a/81286/the-pinout-of-nrf5340). I used the parameters used in [MilliMobile](https://github.com/zenglhardt/millimobile-firmware/blob/main/nrf5340dk_nrf5340_cpuapp.overlay) to begin.


### Writing Code

Start by creating a build configuration from the nrf connect extension under 'APPLICATIONS' there should be a '+ Add build configuration' button. There are already build configurations in my ADC code and the MilliMobile-Firmware codebase. 

Files you care about are:
1. BOARD.overlay -- this is your configuration for each board (a new .overlay file is created for every new "board configuration".)
2. main.c -- this is your logic
3. prj.conf -- this is your configuration for the code (i.e. turning BLE on, how many ADC channels, etc.) More in the [MilliMobile Notion](https://www.notion.so/MilliMobile-Onboarding-5f800d3ea01f4c27829fe487af2f5b41?pvs=4)

### Flasing Firmware

When your code is ready to flash hit 'Flash' under 'ACTIONS'.

** WHEN FLASHING MILLIMOBILE ** turn switch to 'PROG' and follow instructions [here](https://www.notion.so/MilliMobile-Onboarding-5f800d3ea01f4c27829fe487af2f5b41?pvs=4). 

# Using the ADC Code

The modified ADC read code can be found here.
