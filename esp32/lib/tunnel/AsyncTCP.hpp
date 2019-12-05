//
// Created by tim on 9/29/19.
//

#ifndef TUNNEL_TEST_ASYNCTCPSERVER_HPP
#define TUNNEL_TEST_ASYNCTCPSERVER_HPP

#include <iostream>
#include <boost/asio.hpp>
#include <boost/bind.hpp>
#include <boost/enable_shared_from_this.hpp>

#define PORT_NUM 1234

using namespace boost::asio;
using ip::tcp;
using std::cout;
using std::endl;

class TCPConnection : public boost::enable_shared_from_this<TCPConnection> {
private:
	tcp::socket sock;
	std::string message;
	enum {
		max_length = 1024
	};
	char data[max_length];

public:
	typedef boost::shared_ptr<TCPConnection> pointer;

	explicit TCPConnection(io_service &io_service) : sock(io_service) {}

// creating the pointer
	static pointer create(io_service &io_service) {
		return pointer(new TCPConnection(io_service));
	}

//socket creation
	tcp::socket &socket() {
		return sock;
	}

	void start() {
    message = "Hello From " + sock.local_endpoint().address().to_string() + "!";
		sock.async_read_some(
						buffer(data, max_length),
						boost::bind(&TCPConnection::handle_read,
						            shared_from_this(),
						            placeholders::error,
						            placeholders::bytes_transferred));
		sock.async_write_some(
						buffer(message, max_length),
						boost::bind(&TCPConnection::handle_write,
						            shared_from_this(),
						            placeholders::error,
						            placeholders::bytes_transferred));
	}

	void handle_read(const boost::system::error_code &err, size_t bytes_transferred) {
		if (!err) {
			cout << data << endl;
		} else {
			std::cerr << "error: " << err.message() << std::endl;
			sock.close();
		}
	}

	void handle_write(const boost::system::error_code &err, size_t bytes_transferred) {
		if (!err) {
			cout << "AsyncTCPServer sent Hello message!" << endl;
		} else {
			std::cerr << "error: " << err.message() << endl;
			sock.close();
		}
	}
};

class AsyncTCPServer {
private:
	tcp::acceptor acceptor_;


	void start_accept() {
		// socket
		TCPConnection::pointer connection = TCPConnection::create(acceptor_.get_io_service());

		// asynchronous accept operation and wait for a new connection.
		acceptor_.async_accept(connection->socket(),
		                       boost::bind(&AsyncTCPServer::handle_accept, this, connection,
		                                   placeholders::error));
	}

public:
//constructor for accepting connection from client
	explicit AsyncTCPServer(io_service &io_service) : acceptor_(io_service,
	                                                                tcp::endpoint(tcp::v4(), PORT_NUM)) {
		start_accept();
	}

	void handle_accept(TCPConnection::pointer connection, const boost::system::error_code &err) {
		if (!err) {
			connection->start();
		}
		start_accept();
	}
};

#endif //TUNNEL_TEST_ASYNCTCPSERVER_HPP
