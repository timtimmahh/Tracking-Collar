#include <iostream>
#include <boost/asio.hpp>
#define IPV4_ADDRESS "172.29.128.238"
#define PORT_NUM 1234

using namespace boost::asio;
using ip::tcp;
using ip::udp;
using std::string;
using std::cout;
using std::endl;


int main(int argc, char **argv) {
	const char *ipv4 = IPV4_ADDRESS;
	unsigned short port = PORT_NUM;
	if (argc > 1)
		ipv4 = argv[1];

	io_service io_service;
//socket creation
	tcp::socket socket(io_service);
//connection
	socket.connect( tcp::endpoint(ip::address::from_string(ipv4), port ));
// request/message from client
	const string msg = "Hello from " + socket.local_endpoint().address().to_string() + "!\n";
	boost::system::error_code error;
	write( socket, buffer(msg), error );
	if( !error ) {
		cout << "Client(" << socket.local_endpoint().address().to_string() << ") sent hello message to " << socket.remote_endpoint().address().to_string() << "!" << endl;
	}
	else {
		cout << "send failed: " << error.message() << endl;
	}
	// getting response from server
	streambuf receive_buffer;
	read(socket, receive_buffer, transfer_all(), error);
	if( error && error != error::eof ) {
		cout << "receive failed: " << error.message() << endl;
	}
	else {
		const char* data = buffer_cast<const char*>(receive_buffer.data());
		cout << data << endl;
	}
	return 0;
}
