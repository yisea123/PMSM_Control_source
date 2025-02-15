Overview
========
The TEMPMON project is a simple demonstration program of the SDK TEMPMON driver.The
temperatue monitor (TEMPMON) module features alarm functions that can raise independent
interrupt signals if the temperature is above two high-temperature thresholds and below
a low temperature threshold, the system can then use this module to monitor the on-die
temperature and take appropriate actions such as throttling back the core frequency when
a the high temperature interrupt is set.

Toolchain supported
===================
- IAR embedded Workbench  8.32.3
- Keil MDK  5.27
- GCC ARM Embedded  8.2.1
- MCUXpresso  11.0.0

Hardware requirements
=====================

Board settings
==============

Prepare the Demo
================
1. Connect a USB cable between the PC host and the OpenSDA USB port on the board.
2. Open a serial terminal with these settings:
    - 115200 baud rate
    - 8 data bits
    - No parity
    - One stop bit
    - No flow control
3. Download the program to the target board.
4. Either press the reset button on your board or launch the debugger in your IDE to begin running the example.

Running the demo
================
When the example runs successfully, the following message is displayed in the terminal:
~~~~~~~~~~~~~~~~~~~~~~~~
TEMPMON driver example. 
The chip initial temperature is 40.8 ℃. 
The chip temperature has reached high temperature that is 42.7 ℃. 
The chip throttling back core frequency to waiting a desired cool down temperature . 
The chip core frequency is 62500000 Hz. 
The chip temperature has reached low temperature that is 39.5 ℃. 
The chip will return to the normal process . 
The chip core frequency is 500000000 Hz. 
......
~~~~~~~~~~~~~~~~~~~~~~~

Customization options
=====================

