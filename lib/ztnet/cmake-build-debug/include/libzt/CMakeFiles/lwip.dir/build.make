# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.14

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Produce verbose output by default.
VERBOSE = 1

# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/tim/Projects/ztnet

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/tim/Projects/ztnet/cmake-build-debug

# Include any dependencies generated for this target.
include include/libzt/CMakeFiles/lwip.dir/depend.make

# Include the progress variables for this target.
include include/libzt/CMakeFiles/lwip.dir/progress.make

# Include the compile flags for this target's objects.
include include/libzt/CMakeFiles/lwip.dir/flags.make

# Object files for target lwip
lwip_OBJECTS =

# External object files for target lwip
lwip_EXTERNAL_OBJECTS = \
"/home/tim/Projects/ztnet/cmake-build-debug/include/libzt/CMakeFiles/lwip_obj.dir/ext/lwip-contrib/ports/unix/port/sys_arch.c.o" \
"/home/tim/Projects/ztnet/cmake-build-debug/include/libzt/CMakeFiles/lwip_obj.dir/ext/lwip/src/api/api_lib.c.o" \
"/home/tim/Projects/ztnet/cmake-build-debug/include/libzt/CMakeFiles/lwip_obj.dir/ext/lwip/src/api/api_msg.c.o" \
"/home/tim/Projects/ztnet/cmake-build-debug/include/libzt/CMakeFiles/lwip_obj.dir/ext/lwip/src/api/err.c.o" \
"/home/tim/Projects/ztnet/cmake-build-debug/include/libzt/CMakeFiles/lwip_obj.dir/ext/lwip/src/api/if_api.c.o" \
"/home/tim/Projects/ztnet/cmake-build-debug/include/libzt/CMakeFiles/lwip_obj.dir/ext/lwip/src/api/netbuf.c.o" \
"/home/tim/Projects/ztnet/cmake-build-debug/include/libzt/CMakeFiles/lwip_obj.dir/ext/lwip/src/api/netdb.c.o" \
"/home/tim/Projects/ztnet/cmake-build-debug/include/libzt/CMakeFiles/lwip_obj.dir/ext/lwip/src/api/netifapi.c.o" \
"/home/tim/Projects/ztnet/cmake-build-debug/include/libzt/CMakeFiles/lwip_obj.dir/ext/lwip/src/api/sockets.c.o" \
"/home/tim/Projects/ztnet/cmake-build-debug/include/libzt/CMakeFiles/lwip_obj.dir/ext/lwip/src/api/tcpip.c.o" \
"/home/tim/Projects/ztnet/cmake-build-debug/include/libzt/CMakeFiles/lwip_obj.dir/ext/lwip/src/core/altcp.c.o" \
"/home/tim/Projects/ztnet/cmake-build-debug/include/libzt/CMakeFiles/lwip_obj.dir/ext/lwip/src/core/altcp_alloc.c.o" \
"/home/tim/Projects/ztnet/cmake-build-debug/include/libzt/CMakeFiles/lwip_obj.dir/ext/lwip/src/core/altcp_tcp.c.o" \
"/home/tim/Projects/ztnet/cmake-build-debug/include/libzt/CMakeFiles/lwip_obj.dir/ext/lwip/src/core/def.c.o" \
"/home/tim/Projects/ztnet/cmake-build-debug/include/libzt/CMakeFiles/lwip_obj.dir/ext/lwip/src/core/dns.c.o" \
"/home/tim/Projects/ztnet/cmake-build-debug/include/libzt/CMakeFiles/lwip_obj.dir/ext/lwip/src/core/inet_chksum.c.o" \
"/home/tim/Projects/ztnet/cmake-build-debug/include/libzt/CMakeFiles/lwip_obj.dir/ext/lwip/src/core/init.c.o" \
"/home/tim/Projects/ztnet/cmake-build-debug/include/libzt/CMakeFiles/lwip_obj.dir/ext/lwip/src/core/ip.c.o" \
"/home/tim/Projects/ztnet/cmake-build-debug/include/libzt/CMakeFiles/lwip_obj.dir/ext/lwip/src/core/ipv4/autoip.c.o" \
"/home/tim/Projects/ztnet/cmake-build-debug/include/libzt/CMakeFiles/lwip_obj.dir/ext/lwip/src/core/ipv4/dhcp.c.o" \
"/home/tim/Projects/ztnet/cmake-build-debug/include/libzt/CMakeFiles/lwip_obj.dir/ext/lwip/src/core/ipv4/etharp.c.o" \
"/home/tim/Projects/ztnet/cmake-build-debug/include/libzt/CMakeFiles/lwip_obj.dir/ext/lwip/src/core/ipv4/icmp.c.o" \
"/home/tim/Projects/ztnet/cmake-build-debug/include/libzt/CMakeFiles/lwip_obj.dir/ext/lwip/src/core/ipv4/igmp.c.o" \
"/home/tim/Projects/ztnet/cmake-build-debug/include/libzt/CMakeFiles/lwip_obj.dir/ext/lwip/src/core/ipv4/ip4.c.o" \
"/home/tim/Projects/ztnet/cmake-build-debug/include/libzt/CMakeFiles/lwip_obj.dir/ext/lwip/src/core/ipv4/ip4_addr.c.o" \
"/home/tim/Projects/ztnet/cmake-build-debug/include/libzt/CMakeFiles/lwip_obj.dir/ext/lwip/src/core/ipv4/ip4_frag.c.o" \
"/home/tim/Projects/ztnet/cmake-build-debug/include/libzt/CMakeFiles/lwip_obj.dir/ext/lwip/src/core/ipv6/dhcp6.c.o" \
"/home/tim/Projects/ztnet/cmake-build-debug/include/libzt/CMakeFiles/lwip_obj.dir/ext/lwip/src/core/ipv6/ethip6.c.o" \
"/home/tim/Projects/ztnet/cmake-build-debug/include/libzt/CMakeFiles/lwip_obj.dir/ext/lwip/src/core/ipv6/icmp6.c.o" \
"/home/tim/Projects/ztnet/cmake-build-debug/include/libzt/CMakeFiles/lwip_obj.dir/ext/lwip/src/core/ipv6/inet6.c.o" \
"/home/tim/Projects/ztnet/cmake-build-debug/include/libzt/CMakeFiles/lwip_obj.dir/ext/lwip/src/core/ipv6/ip6.c.o" \
"/home/tim/Projects/ztnet/cmake-build-debug/include/libzt/CMakeFiles/lwip_obj.dir/ext/lwip/src/core/ipv6/ip6_addr.c.o" \
"/home/tim/Projects/ztnet/cmake-build-debug/include/libzt/CMakeFiles/lwip_obj.dir/ext/lwip/src/core/ipv6/ip6_frag.c.o" \
"/home/tim/Projects/ztnet/cmake-build-debug/include/libzt/CMakeFiles/lwip_obj.dir/ext/lwip/src/core/ipv6/mld6.c.o" \
"/home/tim/Projects/ztnet/cmake-build-debug/include/libzt/CMakeFiles/lwip_obj.dir/ext/lwip/src/core/ipv6/nd6.c.o" \
"/home/tim/Projects/ztnet/cmake-build-debug/include/libzt/CMakeFiles/lwip_obj.dir/ext/lwip/src/core/mem.c.o" \
"/home/tim/Projects/ztnet/cmake-build-debug/include/libzt/CMakeFiles/lwip_obj.dir/ext/lwip/src/core/memp.c.o" \
"/home/tim/Projects/ztnet/cmake-build-debug/include/libzt/CMakeFiles/lwip_obj.dir/ext/lwip/src/core/netif.c.o" \
"/home/tim/Projects/ztnet/cmake-build-debug/include/libzt/CMakeFiles/lwip_obj.dir/ext/lwip/src/core/pbuf.c.o" \
"/home/tim/Projects/ztnet/cmake-build-debug/include/libzt/CMakeFiles/lwip_obj.dir/ext/lwip/src/core/raw.c.o" \
"/home/tim/Projects/ztnet/cmake-build-debug/include/libzt/CMakeFiles/lwip_obj.dir/ext/lwip/src/core/stats.c.o" \
"/home/tim/Projects/ztnet/cmake-build-debug/include/libzt/CMakeFiles/lwip_obj.dir/ext/lwip/src/core/sys.c.o" \
"/home/tim/Projects/ztnet/cmake-build-debug/include/libzt/CMakeFiles/lwip_obj.dir/ext/lwip/src/core/tcp.c.o" \
"/home/tim/Projects/ztnet/cmake-build-debug/include/libzt/CMakeFiles/lwip_obj.dir/ext/lwip/src/core/tcp_in.c.o" \
"/home/tim/Projects/ztnet/cmake-build-debug/include/libzt/CMakeFiles/lwip_obj.dir/ext/lwip/src/core/tcp_out.c.o" \
"/home/tim/Projects/ztnet/cmake-build-debug/include/libzt/CMakeFiles/lwip_obj.dir/ext/lwip/src/core/timeouts.c.o" \
"/home/tim/Projects/ztnet/cmake-build-debug/include/libzt/CMakeFiles/lwip_obj.dir/ext/lwip/src/core/udp.c.o" \
"/home/tim/Projects/ztnet/cmake-build-debug/include/libzt/CMakeFiles/lwip_obj.dir/ext/lwip/src/netif/bridgeif.c.o" \
"/home/tim/Projects/ztnet/cmake-build-debug/include/libzt/CMakeFiles/lwip_obj.dir/ext/lwip/src/netif/bridgeif_fdb.c.o" \
"/home/tim/Projects/ztnet/cmake-build-debug/include/libzt/CMakeFiles/lwip_obj.dir/ext/lwip/src/netif/ethernet.c.o" \
"/home/tim/Projects/ztnet/cmake-build-debug/include/libzt/CMakeFiles/lwip_obj.dir/ext/lwip/src/netif/lowpan6.c.o" \
"/home/tim/Projects/ztnet/cmake-build-debug/include/libzt/CMakeFiles/lwip_obj.dir/ext/lwip/src/netif/lowpan6_ble.c.o" \
"/home/tim/Projects/ztnet/cmake-build-debug/include/libzt/CMakeFiles/lwip_obj.dir/ext/lwip/src/netif/lowpan6_common.c.o" \
"/home/tim/Projects/ztnet/cmake-build-debug/include/libzt/CMakeFiles/lwip_obj.dir/ext/lwip/src/netif/zepif.c.o"

include/libzt/lib/liblwip.a: include/libzt/CMakeFiles/lwip_obj.dir/ext/lwip-contrib/ports/unix/port/sys_arch.c.o
include/libzt/lib/liblwip.a: include/libzt/CMakeFiles/lwip_obj.dir/ext/lwip/src/api/api_lib.c.o
include/libzt/lib/liblwip.a: include/libzt/CMakeFiles/lwip_obj.dir/ext/lwip/src/api/api_msg.c.o
include/libzt/lib/liblwip.a: include/libzt/CMakeFiles/lwip_obj.dir/ext/lwip/src/api/err.c.o
include/libzt/lib/liblwip.a: include/libzt/CMakeFiles/lwip_obj.dir/ext/lwip/src/api/if_api.c.o
include/libzt/lib/liblwip.a: include/libzt/CMakeFiles/lwip_obj.dir/ext/lwip/src/api/netbuf.c.o
include/libzt/lib/liblwip.a: include/libzt/CMakeFiles/lwip_obj.dir/ext/lwip/src/api/netdb.c.o
include/libzt/lib/liblwip.a: include/libzt/CMakeFiles/lwip_obj.dir/ext/lwip/src/api/netifapi.c.o
include/libzt/lib/liblwip.a: include/libzt/CMakeFiles/lwip_obj.dir/ext/lwip/src/api/sockets.c.o
include/libzt/lib/liblwip.a: include/libzt/CMakeFiles/lwip_obj.dir/ext/lwip/src/api/tcpip.c.o
include/libzt/lib/liblwip.a: include/libzt/CMakeFiles/lwip_obj.dir/ext/lwip/src/core/altcp.c.o
include/libzt/lib/liblwip.a: include/libzt/CMakeFiles/lwip_obj.dir/ext/lwip/src/core/altcp_alloc.c.o
include/libzt/lib/liblwip.a: include/libzt/CMakeFiles/lwip_obj.dir/ext/lwip/src/core/altcp_tcp.c.o
include/libzt/lib/liblwip.a: include/libzt/CMakeFiles/lwip_obj.dir/ext/lwip/src/core/def.c.o
include/libzt/lib/liblwip.a: include/libzt/CMakeFiles/lwip_obj.dir/ext/lwip/src/core/dns.c.o
include/libzt/lib/liblwip.a: include/libzt/CMakeFiles/lwip_obj.dir/ext/lwip/src/core/inet_chksum.c.o
include/libzt/lib/liblwip.a: include/libzt/CMakeFiles/lwip_obj.dir/ext/lwip/src/core/init.c.o
include/libzt/lib/liblwip.a: include/libzt/CMakeFiles/lwip_obj.dir/ext/lwip/src/core/ip.c.o
include/libzt/lib/liblwip.a: include/libzt/CMakeFiles/lwip_obj.dir/ext/lwip/src/core/ipv4/autoip.c.o
include/libzt/lib/liblwip.a: include/libzt/CMakeFiles/lwip_obj.dir/ext/lwip/src/core/ipv4/dhcp.c.o
include/libzt/lib/liblwip.a: include/libzt/CMakeFiles/lwip_obj.dir/ext/lwip/src/core/ipv4/etharp.c.o
include/libzt/lib/liblwip.a: include/libzt/CMakeFiles/lwip_obj.dir/ext/lwip/src/core/ipv4/icmp.c.o
include/libzt/lib/liblwip.a: include/libzt/CMakeFiles/lwip_obj.dir/ext/lwip/src/core/ipv4/igmp.c.o
include/libzt/lib/liblwip.a: include/libzt/CMakeFiles/lwip_obj.dir/ext/lwip/src/core/ipv4/ip4.c.o
include/libzt/lib/liblwip.a: include/libzt/CMakeFiles/lwip_obj.dir/ext/lwip/src/core/ipv4/ip4_addr.c.o
include/libzt/lib/liblwip.a: include/libzt/CMakeFiles/lwip_obj.dir/ext/lwip/src/core/ipv4/ip4_frag.c.o
include/libzt/lib/liblwip.a: include/libzt/CMakeFiles/lwip_obj.dir/ext/lwip/src/core/ipv6/dhcp6.c.o
include/libzt/lib/liblwip.a: include/libzt/CMakeFiles/lwip_obj.dir/ext/lwip/src/core/ipv6/ethip6.c.o
include/libzt/lib/liblwip.a: include/libzt/CMakeFiles/lwip_obj.dir/ext/lwip/src/core/ipv6/icmp6.c.o
include/libzt/lib/liblwip.a: include/libzt/CMakeFiles/lwip_obj.dir/ext/lwip/src/core/ipv6/inet6.c.o
include/libzt/lib/liblwip.a: include/libzt/CMakeFiles/lwip_obj.dir/ext/lwip/src/core/ipv6/ip6.c.o
include/libzt/lib/liblwip.a: include/libzt/CMakeFiles/lwip_obj.dir/ext/lwip/src/core/ipv6/ip6_addr.c.o
include/libzt/lib/liblwip.a: include/libzt/CMakeFiles/lwip_obj.dir/ext/lwip/src/core/ipv6/ip6_frag.c.o
include/libzt/lib/liblwip.a: include/libzt/CMakeFiles/lwip_obj.dir/ext/lwip/src/core/ipv6/mld6.c.o
include/libzt/lib/liblwip.a: include/libzt/CMakeFiles/lwip_obj.dir/ext/lwip/src/core/ipv6/nd6.c.o
include/libzt/lib/liblwip.a: include/libzt/CMakeFiles/lwip_obj.dir/ext/lwip/src/core/mem.c.o
include/libzt/lib/liblwip.a: include/libzt/CMakeFiles/lwip_obj.dir/ext/lwip/src/core/memp.c.o
include/libzt/lib/liblwip.a: include/libzt/CMakeFiles/lwip_obj.dir/ext/lwip/src/core/netif.c.o
include/libzt/lib/liblwip.a: include/libzt/CMakeFiles/lwip_obj.dir/ext/lwip/src/core/pbuf.c.o
include/libzt/lib/liblwip.a: include/libzt/CMakeFiles/lwip_obj.dir/ext/lwip/src/core/raw.c.o
include/libzt/lib/liblwip.a: include/libzt/CMakeFiles/lwip_obj.dir/ext/lwip/src/core/stats.c.o
include/libzt/lib/liblwip.a: include/libzt/CMakeFiles/lwip_obj.dir/ext/lwip/src/core/sys.c.o
include/libzt/lib/liblwip.a: include/libzt/CMakeFiles/lwip_obj.dir/ext/lwip/src/core/tcp.c.o
include/libzt/lib/liblwip.a: include/libzt/CMakeFiles/lwip_obj.dir/ext/lwip/src/core/tcp_in.c.o
include/libzt/lib/liblwip.a: include/libzt/CMakeFiles/lwip_obj.dir/ext/lwip/src/core/tcp_out.c.o
include/libzt/lib/liblwip.a: include/libzt/CMakeFiles/lwip_obj.dir/ext/lwip/src/core/timeouts.c.o
include/libzt/lib/liblwip.a: include/libzt/CMakeFiles/lwip_obj.dir/ext/lwip/src/core/udp.c.o
include/libzt/lib/liblwip.a: include/libzt/CMakeFiles/lwip_obj.dir/ext/lwip/src/netif/bridgeif.c.o
include/libzt/lib/liblwip.a: include/libzt/CMakeFiles/lwip_obj.dir/ext/lwip/src/netif/bridgeif_fdb.c.o
include/libzt/lib/liblwip.a: include/libzt/CMakeFiles/lwip_obj.dir/ext/lwip/src/netif/ethernet.c.o
include/libzt/lib/liblwip.a: include/libzt/CMakeFiles/lwip_obj.dir/ext/lwip/src/netif/lowpan6.c.o
include/libzt/lib/liblwip.a: include/libzt/CMakeFiles/lwip_obj.dir/ext/lwip/src/netif/lowpan6_ble.c.o
include/libzt/lib/liblwip.a: include/libzt/CMakeFiles/lwip_obj.dir/ext/lwip/src/netif/lowpan6_common.c.o
include/libzt/lib/liblwip.a: include/libzt/CMakeFiles/lwip_obj.dir/ext/lwip/src/netif/zepif.c.o
include/libzt/lib/liblwip.a: include/libzt/CMakeFiles/lwip.dir/build.make
include/libzt/lib/liblwip.a: include/libzt/CMakeFiles/lwip.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/tim/Projects/ztnet/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Linking C static library lib/liblwip.a"
	cd /home/tim/Projects/ztnet/cmake-build-debug/include/libzt && $(CMAKE_COMMAND) -P CMakeFiles/lwip.dir/cmake_clean_target.cmake
	cd /home/tim/Projects/ztnet/cmake-build-debug/include/libzt && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/lwip.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
include/libzt/CMakeFiles/lwip.dir/build: include/libzt/lib/liblwip.a

.PHONY : include/libzt/CMakeFiles/lwip.dir/build

include/libzt/CMakeFiles/lwip.dir/clean:
	cd /home/tim/Projects/ztnet/cmake-build-debug/include/libzt && $(CMAKE_COMMAND) -P CMakeFiles/lwip.dir/cmake_clean.cmake
.PHONY : include/libzt/CMakeFiles/lwip.dir/clean

include/libzt/CMakeFiles/lwip.dir/depend:
	cd /home/tim/Projects/ztnet/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/tim/Projects/ztnet /home/tim/Projects/ztnet/include/libzt /home/tim/Projects/ztnet/cmake-build-debug /home/tim/Projects/ztnet/cmake-build-debug/include/libzt /home/tim/Projects/ztnet/cmake-build-debug/include/libzt/CMakeFiles/lwip.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : include/libzt/CMakeFiles/lwip.dir/depend

