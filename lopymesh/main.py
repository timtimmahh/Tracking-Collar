import os
import socket
import time
import struct
from network import LoRa, WLAN
import machine
import _thread
from Mesh import Mesh

# this uses the UART_1 default pins for TXD and RXD (``P3`` and ``P4``) https://docs.pycom.io/firmwareapi/pycom/machine/uart/
uart1 = machine.UART(1, baudrate=9600)

# setup as a station
ssid, auth = 'Timothys-Fedora', (WLAN.WPA2, 'UHDUNNO12')
mesh = Mesh(type=WLAN, netcfg=(ssid, auth))


def sensor_thread(mesh):
    while True:
        time.sleep(5)
        line = uart1.readline()
        if line is not None:
            mesh.on_new_data(line)
        else:
            mesh.on_new_data('There is no data from UART!')


_thread.start_new_thread(sensor_thread, (mesh,))

while True:
    mesh.listen_accept()
