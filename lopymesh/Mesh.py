import machine
import socket
import time
from network import LoRa, WLAN
import _thread


def __receive_thread__(mesh, sock, addr):
    with sock:
        data = sock.recv(1024).decode()
        if len(data) > 0:
            print('Received {}'.format(data))
            mesh.broadcast(data, sock)
        sock.close()


class Mesh:
    """
    Basic mesh network for Pycom LoPy/FiPy devices.
    Can be used with either WiFi or LoRa communication protocols.
    """

    def __init__(self, netcfg, interface=WLAN):
        self.data_func = lambda _: None
        self.new_data = False
        if interface is WLAN:
            wlan = WLAN(mode=WLAN.STA)
            wlan.connect(ssid=netcfg[0], auth=netcfg[1])
            while not wlan.isconnected():
                machine.idle()
            self.ip, _, self.gateway, self.dns = wlan.ifconfig()
            self.__sock_data__ = (socket.AF_INET, socket.SOCK_STREAM, socket.IPPROTO_TCP)
        elif interface is LoRa:
            self.ip, self.gateway, self.dns = '', '', ''
            # Do setup for LoRa Mesh
            self.lora = LoRa(mode=LoRa.LORA, region=LoRa.US915)
            self.__sock_data__ = (socket.AF_LORA, socket.SOCK_RAW)
        self.new_socket()
        self.__register__()
        self.sock.bind(('', 1234))

    def get_data(self, data=None):
        if data is None:
            return None
        return '[{}] {}: {}'.format(self.ip, time.time(), data)

    def on_new_data(self, data):
        data = self.get_data(data=data)
        if data is not None:
            print(data)
            self.broadcast(data)

    def do_accept(self):
        sock_addr = self.sock.accept()
        _thread.start_new_thread(__receive_thread__, list(sock_addr).insert(0, self))

    def new_socket(self):
        self.sock = socket.socket(*self.__sock_data__)
        return self.sock

    def send_data(self, data, peer, sock=None):
        sock = self.new_socket() if sock is None else sock
        sock.connect((peer, 1234))
        sock.send(data)
        sock.close()

    def broadcast(self, data, sock=None):
        for peer in self.peers:
            try:
                if peer != self.ip:
                    print('Sending to {}'.format(peer))
                    self.send_data(data, peer, sock)
            except:
                pass

    def listen_accept(self):
        self.sock.setsockopt(socket.SOL_SOCKET, socket.SO_REUSEADDR, 1)
        self.sock.listen(5)
        self.do_accept()

    def __register__(self):
        self.new_socket().settimeout(None)
        self.sock.connect((self.gateway, 1234))
        self.sock.send('Register: {}'.format(self.ip))
        self.peers = self.sock.recv(1024).decode().split(',')
        print(self.peers)
        self.new_socket()
