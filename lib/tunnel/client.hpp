//
// Created by tim on 10/3/19.
//

#ifndef TUNNEL_TEST_CLIENT_HPP
#define TUNNEL_TEST_CLIENT_HPP
#include <iostream>
#include <boost/asio.hpp>
#include <boost/enable_shared_from_this.hpp>

#define IPV4_ADDRESS "10.147.17.46"
#define PORT_NUM 1234

using namespace boost;
using namespace asio;
using boost::system::error_code;
using ip::tcp;
using ip::udp;
using std::string;
using std::cout;
using std::endl;

typedef unsigned short port;
typedef const char *ipv4;

using successFnc = void(*)(void*);

using errorFnc = void(*)(error_code&);

class result {
public:
//	explicit result() : onSuccess(nullptr), onError(nullptr) {}
	result(successFnc sf, errorFnc ef) : onSuccess(sf), onError(ef) {}
	void(*onSuccess)(void*);
	void(*onError)(error_code&);
};

template <class protocol>
class Client : public boost::enable_shared_from_this<Client<protocol>> {
	typedef typename protocol::socket pp;
	successFnc w_s = [&]() {
		cout << "Client(" << socket.local_endpoint().address().to_string() << ") sent hello message to " << socket.remote_endpoint().address().to_string() << "!" << endl;
	};
	errorFnc w_e = [](error_code& ec) {
		cout << "send failed: " << ec.message() << endl;
	};
	successFnc r_s = [&]() {
		cout << (const char*)buffer_cast<const char*>(rec_buf.data()) << endl;
	};
	errorFnc r_e = [](error_code& error) {
		cout << "receive failed: " << error.message() << endl;
	};
private:
	typename protocol::endpoint _endpoint;
	error_code _error;
public:
	pp socket;
	streambuf rec_buf;
	Client(io_service& io_service, ipv4 ipv4, port port)
	: socket(io_service),
	_endpoint(ip::address::from_string(ipv4), port) {
		socket.connect(_endpoint);
	}

	void writeMsg(const string& msg, result on_result) {
		write(socket, buffer(msg), _error);
		if (!_error) on_result.onSuccess((void*)&socket);
		else on_result.onError(_error);
	}
	void writeMsg(const string& msg) { writeMsg(msg, result(w_s, w_e)); }

	template <typename CompletionCondition>
	void readMsg(CompletionCondition condition, result on_result) {
		read(socket, rec_buf, condition, _error);
		if (_error && _error != error::eof) on_result.onError(_error);
		else on_result.onSuccess((void*)&rec_buf);
	}
	template <typename CompletionCondition>
	void readMsg(CompletionCondition condition) {
		readMsg(condition, result(r_s, r_e));
	}
};

#endif //TUNNEL_TEST_CLIENT_HPP
