#include <arpa/inet.h>
#include <cstdio>
#include <string>
#include <unistd.h>
#include <cstdlib>
#include "ZeroTier.h"

bool node_ready = false;
bool network_ready = false;

// Example callbacks
void myZeroTierEventCallback(struct zts_callback_msg *msg)
{
	//
	// Node events
	//
	if (msg->eventCode == ZTS_EVENT_NODE_ONLINE) {
		printf("ZTS_EVENT_NODE_ONLINE, node=%lx\n", msg->node->address);
		node_ready = true;
		// ZeroTier service is running and online
	}
	if (msg->eventCode == ZTS_EVENT_NODE_OFFLINE) {
		printf("ZTS_EVENT_NODE_OFFLINE\n");
		node_ready = false;
		// ZeroTier service is running and online
	}
	if (msg->eventCode == ZTS_EVENT_NODE_NORMAL_TERMINATION) {
		printf("ZTS_EVENT_NODE_NORMAL_TERMINATION\n");
		// ZeroTier service has stopped
	}

	//
	// Virtual network events
	//
	if (msg->eventCode == ZTS_EVENT_NETWORK_NOT_FOUND) {
		printf("ZTS_EVENT_NETWORK_NOT_FOUND --- network=%lx\n", msg->network->nwid);
		// Is your nwid incorrect?
	}
	if (msg->eventCode == ZTS_EVENT_NETWORK_REQUESTING_CONFIG) {
		printf("ZTS_EVENT_NETWORK_REQUESTING_CONFIG --- network=%lx\n", msg->network->nwid);
		// Node is requesting network config details from controller, please wait
	}
	if (msg->eventCode == ZTS_EVENT_NETWORK_ACCESS_DENIED) {
		printf("ZTS_EVENT_NETWORK_ACCESS_DENIED --- network=%lx\n", msg->network->nwid);
		// This node is not authorized to join nwid
	}
	if (msg->eventCode == ZTS_EVENT_NETWORK_READY_IP4) {
		printf("ZTS_EVENT_NETWORK_READY_IP4 --- network=%lx\n", msg->network->nwid);
		network_ready = true;
		// IPv4 traffic can now be processed for nwid
	}
	if (msg->eventCode == ZTS_EVENT_NETWORK_READY_IP6) {
		printf("ZTS_EVENT_NETWORK_READY_IP6 --- network=%lx\n", msg->network->nwid);
		network_ready = true;
	}
	if (msg->eventCode == ZTS_EVENT_NETWORK_DOWN) {
		printf("ZTS_EVENT_NETWORK_DOWN --- network=%lx\n", msg->network->nwid);
		// Can happen if another thread called zts_leave()
	}

	//
	// Network stack events
	//
	if (msg->eventCode == ZTS_EVENT_NETIF_UP) {
		printf("ZTS_EVENT_NETIF_UP --- network=%lx, mac=%lx, mtu=%d\n",
		       msg->netif->nwid,
		       msg->netif->mac,
		       msg->netif->mtu);
		network_ready = true;
	}
	if (msg->eventCode == ZTS_EVENT_NETIF_DOWN) {
		printf("ZTS_EVENT_NETIF_DOWN --- network=%lx, mac=%lx\n",
		       msg->netif->nwid,
		       msg->netif->mac);

		network_ready = true;
	}

	//
	// Address events
	//
	if (msg->eventCode == ZTS_EVENT_ADDR_ADDED_IP4) {
		char ipstr[INET_ADDRSTRLEN];
		auto *in4 = (struct sockaddr_in*)&(msg->addr->addr);
		inet_ntop(AF_INET, &(in4->sin_addr), ipstr, INET_ADDRSTRLEN);
		printf("ZTS_EVENT_ADDR_NEW_IP4 --- addr=%s (on network=%lx)\n",
		       ipstr, msg->addr->nwid);
	}
	if (msg->eventCode == ZTS_EVENT_ADDR_ADDED_IP6) {
		char ipstr[INET6_ADDRSTRLEN];
		auto *in6 = (struct sockaddr_in6*)&(msg->addr->addr);
		inet_ntop(AF_INET6, &(in6->sin6_addr), ipstr, INET6_ADDRSTRLEN);
		printf("ZTS_EVENT_ADDR_NEW_IP6 --- addr=%s (on network=%lx)\n",
		       ipstr, msg->addr->nwid);
	}
	if (msg->eventCode == ZTS_EVENT_ADDR_REMOVED_IP4) {
		char ipstr[INET_ADDRSTRLEN];
		auto *in4 = (struct sockaddr_in*)&(msg->addr->addr);
		inet_ntop(AF_INET, &(in4->sin_addr), ipstr, INET_ADDRSTRLEN);
		printf("ZTS_EVENT_ADDR_REMOVED_IP4 --- addr=%s (on network=%lx)\n",
		       ipstr, msg->addr->nwid);
	}
	if (msg->eventCode == ZTS_EVENT_ADDR_REMOVED_IP6) {
		char ipstr[INET6_ADDRSTRLEN];
		auto *in6 = (struct sockaddr_in6*)&(msg->addr->addr);
		inet_ntop(AF_INET6, &(in6->sin6_addr), ipstr, INET6_ADDRSTRLEN);
		printf("ZTS_EVENT_ADDR_REMOVED_IP6 --- addr=%s (on network=%lx)\n",
		       ipstr, msg->addr->nwid);
	}

	//
	// Peer events
	//
	if (msg->eventCode == ZTS_EVENT_PEER_P2P) {
		printf("ZTS_EVENT_PEER_P2P --- node=%lx\n", msg->peer->address);
		// A direct path is known for nodeId
	}
	if (msg->eventCode == ZTS_EVENT_PEER_RELAY) {
		printf("ZTS_EVENT_PEER_RELAY --- node=%lx\n", msg->peer->address);
		// No direct path is known for nodeId
	}
}
using namespace std;

int main(int argc, char **argv)
{
	if (argc < 3) {
		printf("Usage: ztnet [ipv4] [port]\n");
		exit(1);
	}
	string str = "welcome to the machine";
	char *remoteIp = argv[1];
	int remotePort = (int)strtol(argv[2], nullptr, 10);
	int fd, err = 0;
	struct zts_sockaddr_in addr;
	addr.sin_family = ZTS_AF_INET;
	addr.sin_addr.s_addr = inet_addr(remoteIp);
	addr.sin_port = htons(remotePort);

	// Set up ZeroTier service
	int defaultServicePort = 9994;
	long unsigned int nwid = 0xe4da7455b25ac039;
	zts_start(".", &myZeroTierEventCallback, defaultServicePort);
	printf("Waiting for node to come online...\n");

	// Wait for the node to come online before joining a network
	while (!node_ready) { sleep(1); }
	zts_join(nwid);
	printf("Joined virtual network. Requesting configuration...\n");

	for (int i = 0; i < 10; i++) {
		printf("zts_errno=%d\n", zts_errno);
		if ((fd = zts_socket(AF_INET, SOCK_STREAM, IPPROTO_UDP)) < 0) {
			printf("error creating socket\n");
			break;
		}
		printf("fd=%d, zts_errno=%d\n", fd, zts_errno);
		if ((err = zts_connect(fd, (const struct sockaddr *) &addr, sizeof(addr))) < 0) {
			printf("error connecting to remote host\n");
			break;
		}
		if ((err = zts_write(fd, str.c_str(), str.size())) < 0) {
			printf("error writing to socket\n");
			break;
		}


		zts_close(fd);
	}
	zts_stop();
	return 0;
}