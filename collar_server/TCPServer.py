import socket
import requests
import time
from json import dumps


DB_URL = "http://ec2-3-94-53-24.compute-1.amazonaws.com/insert_db.php"


class TCPServer:

    def __init__(self):
        self.port = 1234
        self.addresses = set(['10.42.0.1'])
        self.sock = socket.socket()
        print('Socket successfully created')
        self.sock.bind(('', self.port))
        self.sock.listen(5)
        print('Listening for connections')

    def handle_accept(self, con, addr):
        with con:
            data = con.recv(1024)
            if len(data) > 0:
                if "Register" in str(data):
                    self.addresses.add(addr[0])
                    print(f'Registered {addr[0]}')
                else:
                    send_to_remote_db(addr[0], data)
                    print(f'From {addr[0]}: {data}')
                message = ','.join(a for a in self.addresses if a is not addr[0])
                print(f'Sending \'{message}\'')
                con.send(message.encode())

    def start(self):
        while True:
            self.handle_accept(*self.sock.accept())


def jsonify(data):
    return dumps(data)


def send_to_remote_db(addr, data):
    post_data = {
        'device': addr,
        'timestamp': time.time_ns() / 1000.0,
        'sensor_data': data
    }
    r = requests.post(url=DB_URL, data=post_data)
    print(r.text)


