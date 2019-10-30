//
// Created by tim on 9/30/19.
//
#include "AsyncTCP.hpp"

int main(int argc, char *argv[])
{
	try
	{
		boost::asio::io_service io_service;
		AsyncTCPServer server(io_service);
		io_service.run();
	}
	catch(std::exception& e)
	{
		std::cerr << e.what() << endl;
	}
	return 0;
}