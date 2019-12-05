#!/usr/bin/env python
#
# Copyright (c) 2019, Pycom Limited.
#
# This software is licensed under the GNU GPL version 3 or any
# later version, with permitted additional terms. For more information
# see the Pycom Licence v1.0 document supplied with this file, or
# available at https://www.pycom.io/opensource/licensing
#

from machine import UART
import machine
import os

uart = UART(0, baudrate=115200)
os.dupterm(uart)

# Configures second UART bus on pins P3(TX1) and P4(RX1)
uart1 = UART(1, baudrate=9600)

machine.main('main.py')
