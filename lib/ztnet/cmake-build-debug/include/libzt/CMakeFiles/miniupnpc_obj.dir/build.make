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
include include/libzt/CMakeFiles/miniupnpc_obj.dir/depend.make

# Include the progress variables for this target.
include include/libzt/CMakeFiles/miniupnpc_obj.dir/progress.make

# Include the compile flags for this target's objects.
include include/libzt/CMakeFiles/miniupnpc_obj.dir/flags.make

include/libzt/CMakeFiles/miniupnpc_obj.dir/ext/ZeroTierOne/ext/miniupnpc/connecthostport.c.o: include/libzt/CMakeFiles/miniupnpc_obj.dir/flags.make
include/libzt/CMakeFiles/miniupnpc_obj.dir/ext/ZeroTierOne/ext/miniupnpc/connecthostport.c.o: ../include/libzt/ext/ZeroTierOne/ext/miniupnpc/connecthostport.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/tim/Projects/ztnet/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object include/libzt/CMakeFiles/miniupnpc_obj.dir/ext/ZeroTierOne/ext/miniupnpc/connecthostport.c.o"
	cd /home/tim/Projects/ztnet/cmake-build-debug/include/libzt && /usr/lib64/ccache/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/miniupnpc_obj.dir/ext/ZeroTierOne/ext/miniupnpc/connecthostport.c.o   -c /home/tim/Projects/ztnet/include/libzt/ext/ZeroTierOne/ext/miniupnpc/connecthostport.c

include/libzt/CMakeFiles/miniupnpc_obj.dir/ext/ZeroTierOne/ext/miniupnpc/connecthostport.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/miniupnpc_obj.dir/ext/ZeroTierOne/ext/miniupnpc/connecthostport.c.i"
	cd /home/tim/Projects/ztnet/cmake-build-debug/include/libzt && /usr/lib64/ccache/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/tim/Projects/ztnet/include/libzt/ext/ZeroTierOne/ext/miniupnpc/connecthostport.c > CMakeFiles/miniupnpc_obj.dir/ext/ZeroTierOne/ext/miniupnpc/connecthostport.c.i

include/libzt/CMakeFiles/miniupnpc_obj.dir/ext/ZeroTierOne/ext/miniupnpc/connecthostport.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/miniupnpc_obj.dir/ext/ZeroTierOne/ext/miniupnpc/connecthostport.c.s"
	cd /home/tim/Projects/ztnet/cmake-build-debug/include/libzt && /usr/lib64/ccache/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/tim/Projects/ztnet/include/libzt/ext/ZeroTierOne/ext/miniupnpc/connecthostport.c -o CMakeFiles/miniupnpc_obj.dir/ext/ZeroTierOne/ext/miniupnpc/connecthostport.c.s

include/libzt/CMakeFiles/miniupnpc_obj.dir/ext/ZeroTierOne/ext/miniupnpc/igd_desc_parse.c.o: include/libzt/CMakeFiles/miniupnpc_obj.dir/flags.make
include/libzt/CMakeFiles/miniupnpc_obj.dir/ext/ZeroTierOne/ext/miniupnpc/igd_desc_parse.c.o: ../include/libzt/ext/ZeroTierOne/ext/miniupnpc/igd_desc_parse.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/tim/Projects/ztnet/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object include/libzt/CMakeFiles/miniupnpc_obj.dir/ext/ZeroTierOne/ext/miniupnpc/igd_desc_parse.c.o"
	cd /home/tim/Projects/ztnet/cmake-build-debug/include/libzt && /usr/lib64/ccache/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/miniupnpc_obj.dir/ext/ZeroTierOne/ext/miniupnpc/igd_desc_parse.c.o   -c /home/tim/Projects/ztnet/include/libzt/ext/ZeroTierOne/ext/miniupnpc/igd_desc_parse.c

include/libzt/CMakeFiles/miniupnpc_obj.dir/ext/ZeroTierOne/ext/miniupnpc/igd_desc_parse.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/miniupnpc_obj.dir/ext/ZeroTierOne/ext/miniupnpc/igd_desc_parse.c.i"
	cd /home/tim/Projects/ztnet/cmake-build-debug/include/libzt && /usr/lib64/ccache/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/tim/Projects/ztnet/include/libzt/ext/ZeroTierOne/ext/miniupnpc/igd_desc_parse.c > CMakeFiles/miniupnpc_obj.dir/ext/ZeroTierOne/ext/miniupnpc/igd_desc_parse.c.i

include/libzt/CMakeFiles/miniupnpc_obj.dir/ext/ZeroTierOne/ext/miniupnpc/igd_desc_parse.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/miniupnpc_obj.dir/ext/ZeroTierOne/ext/miniupnpc/igd_desc_parse.c.s"
	cd /home/tim/Projects/ztnet/cmake-build-debug/include/libzt && /usr/lib64/ccache/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/tim/Projects/ztnet/include/libzt/ext/ZeroTierOne/ext/miniupnpc/igd_desc_parse.c -o CMakeFiles/miniupnpc_obj.dir/ext/ZeroTierOne/ext/miniupnpc/igd_desc_parse.c.s

include/libzt/CMakeFiles/miniupnpc_obj.dir/ext/ZeroTierOne/ext/miniupnpc/minisoap.c.o: include/libzt/CMakeFiles/miniupnpc_obj.dir/flags.make
include/libzt/CMakeFiles/miniupnpc_obj.dir/ext/ZeroTierOne/ext/miniupnpc/minisoap.c.o: ../include/libzt/ext/ZeroTierOne/ext/miniupnpc/minisoap.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/tim/Projects/ztnet/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object include/libzt/CMakeFiles/miniupnpc_obj.dir/ext/ZeroTierOne/ext/miniupnpc/minisoap.c.o"
	cd /home/tim/Projects/ztnet/cmake-build-debug/include/libzt && /usr/lib64/ccache/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/miniupnpc_obj.dir/ext/ZeroTierOne/ext/miniupnpc/minisoap.c.o   -c /home/tim/Projects/ztnet/include/libzt/ext/ZeroTierOne/ext/miniupnpc/minisoap.c

include/libzt/CMakeFiles/miniupnpc_obj.dir/ext/ZeroTierOne/ext/miniupnpc/minisoap.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/miniupnpc_obj.dir/ext/ZeroTierOne/ext/miniupnpc/minisoap.c.i"
	cd /home/tim/Projects/ztnet/cmake-build-debug/include/libzt && /usr/lib64/ccache/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/tim/Projects/ztnet/include/libzt/ext/ZeroTierOne/ext/miniupnpc/minisoap.c > CMakeFiles/miniupnpc_obj.dir/ext/ZeroTierOne/ext/miniupnpc/minisoap.c.i

include/libzt/CMakeFiles/miniupnpc_obj.dir/ext/ZeroTierOne/ext/miniupnpc/minisoap.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/miniupnpc_obj.dir/ext/ZeroTierOne/ext/miniupnpc/minisoap.c.s"
	cd /home/tim/Projects/ztnet/cmake-build-debug/include/libzt && /usr/lib64/ccache/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/tim/Projects/ztnet/include/libzt/ext/ZeroTierOne/ext/miniupnpc/minisoap.c -o CMakeFiles/miniupnpc_obj.dir/ext/ZeroTierOne/ext/miniupnpc/minisoap.c.s

include/libzt/CMakeFiles/miniupnpc_obj.dir/ext/ZeroTierOne/ext/miniupnpc/minissdpc.c.o: include/libzt/CMakeFiles/miniupnpc_obj.dir/flags.make
include/libzt/CMakeFiles/miniupnpc_obj.dir/ext/ZeroTierOne/ext/miniupnpc/minissdpc.c.o: ../include/libzt/ext/ZeroTierOne/ext/miniupnpc/minissdpc.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/tim/Projects/ztnet/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building C object include/libzt/CMakeFiles/miniupnpc_obj.dir/ext/ZeroTierOne/ext/miniupnpc/minissdpc.c.o"
	cd /home/tim/Projects/ztnet/cmake-build-debug/include/libzt && /usr/lib64/ccache/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/miniupnpc_obj.dir/ext/ZeroTierOne/ext/miniupnpc/minissdpc.c.o   -c /home/tim/Projects/ztnet/include/libzt/ext/ZeroTierOne/ext/miniupnpc/minissdpc.c

include/libzt/CMakeFiles/miniupnpc_obj.dir/ext/ZeroTierOne/ext/miniupnpc/minissdpc.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/miniupnpc_obj.dir/ext/ZeroTierOne/ext/miniupnpc/minissdpc.c.i"
	cd /home/tim/Projects/ztnet/cmake-build-debug/include/libzt && /usr/lib64/ccache/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/tim/Projects/ztnet/include/libzt/ext/ZeroTierOne/ext/miniupnpc/minissdpc.c > CMakeFiles/miniupnpc_obj.dir/ext/ZeroTierOne/ext/miniupnpc/minissdpc.c.i

include/libzt/CMakeFiles/miniupnpc_obj.dir/ext/ZeroTierOne/ext/miniupnpc/minissdpc.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/miniupnpc_obj.dir/ext/ZeroTierOne/ext/miniupnpc/minissdpc.c.s"
	cd /home/tim/Projects/ztnet/cmake-build-debug/include/libzt && /usr/lib64/ccache/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/tim/Projects/ztnet/include/libzt/ext/ZeroTierOne/ext/miniupnpc/minissdpc.c -o CMakeFiles/miniupnpc_obj.dir/ext/ZeroTierOne/ext/miniupnpc/minissdpc.c.s

include/libzt/CMakeFiles/miniupnpc_obj.dir/ext/ZeroTierOne/ext/miniupnpc/miniupnpc.c.o: include/libzt/CMakeFiles/miniupnpc_obj.dir/flags.make
include/libzt/CMakeFiles/miniupnpc_obj.dir/ext/ZeroTierOne/ext/miniupnpc/miniupnpc.c.o: ../include/libzt/ext/ZeroTierOne/ext/miniupnpc/miniupnpc.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/tim/Projects/ztnet/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building C object include/libzt/CMakeFiles/miniupnpc_obj.dir/ext/ZeroTierOne/ext/miniupnpc/miniupnpc.c.o"
	cd /home/tim/Projects/ztnet/cmake-build-debug/include/libzt && /usr/lib64/ccache/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/miniupnpc_obj.dir/ext/ZeroTierOne/ext/miniupnpc/miniupnpc.c.o   -c /home/tim/Projects/ztnet/include/libzt/ext/ZeroTierOne/ext/miniupnpc/miniupnpc.c

include/libzt/CMakeFiles/miniupnpc_obj.dir/ext/ZeroTierOne/ext/miniupnpc/miniupnpc.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/miniupnpc_obj.dir/ext/ZeroTierOne/ext/miniupnpc/miniupnpc.c.i"
	cd /home/tim/Projects/ztnet/cmake-build-debug/include/libzt && /usr/lib64/ccache/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/tim/Projects/ztnet/include/libzt/ext/ZeroTierOne/ext/miniupnpc/miniupnpc.c > CMakeFiles/miniupnpc_obj.dir/ext/ZeroTierOne/ext/miniupnpc/miniupnpc.c.i

include/libzt/CMakeFiles/miniupnpc_obj.dir/ext/ZeroTierOne/ext/miniupnpc/miniupnpc.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/miniupnpc_obj.dir/ext/ZeroTierOne/ext/miniupnpc/miniupnpc.c.s"
	cd /home/tim/Projects/ztnet/cmake-build-debug/include/libzt && /usr/lib64/ccache/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/tim/Projects/ztnet/include/libzt/ext/ZeroTierOne/ext/miniupnpc/miniupnpc.c -o CMakeFiles/miniupnpc_obj.dir/ext/ZeroTierOne/ext/miniupnpc/miniupnpc.c.s

include/libzt/CMakeFiles/miniupnpc_obj.dir/ext/ZeroTierOne/ext/miniupnpc/miniwget.c.o: include/libzt/CMakeFiles/miniupnpc_obj.dir/flags.make
include/libzt/CMakeFiles/miniupnpc_obj.dir/ext/ZeroTierOne/ext/miniupnpc/miniwget.c.o: ../include/libzt/ext/ZeroTierOne/ext/miniupnpc/miniwget.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/tim/Projects/ztnet/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building C object include/libzt/CMakeFiles/miniupnpc_obj.dir/ext/ZeroTierOne/ext/miniupnpc/miniwget.c.o"
	cd /home/tim/Projects/ztnet/cmake-build-debug/include/libzt && /usr/lib64/ccache/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/miniupnpc_obj.dir/ext/ZeroTierOne/ext/miniupnpc/miniwget.c.o   -c /home/tim/Projects/ztnet/include/libzt/ext/ZeroTierOne/ext/miniupnpc/miniwget.c

include/libzt/CMakeFiles/miniupnpc_obj.dir/ext/ZeroTierOne/ext/miniupnpc/miniwget.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/miniupnpc_obj.dir/ext/ZeroTierOne/ext/miniupnpc/miniwget.c.i"
	cd /home/tim/Projects/ztnet/cmake-build-debug/include/libzt && /usr/lib64/ccache/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/tim/Projects/ztnet/include/libzt/ext/ZeroTierOne/ext/miniupnpc/miniwget.c > CMakeFiles/miniupnpc_obj.dir/ext/ZeroTierOne/ext/miniupnpc/miniwget.c.i

include/libzt/CMakeFiles/miniupnpc_obj.dir/ext/ZeroTierOne/ext/miniupnpc/miniwget.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/miniupnpc_obj.dir/ext/ZeroTierOne/ext/miniupnpc/miniwget.c.s"
	cd /home/tim/Projects/ztnet/cmake-build-debug/include/libzt && /usr/lib64/ccache/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/tim/Projects/ztnet/include/libzt/ext/ZeroTierOne/ext/miniupnpc/miniwget.c -o CMakeFiles/miniupnpc_obj.dir/ext/ZeroTierOne/ext/miniupnpc/miniwget.c.s

include/libzt/CMakeFiles/miniupnpc_obj.dir/ext/ZeroTierOne/ext/miniupnpc/minixml.c.o: include/libzt/CMakeFiles/miniupnpc_obj.dir/flags.make
include/libzt/CMakeFiles/miniupnpc_obj.dir/ext/ZeroTierOne/ext/miniupnpc/minixml.c.o: ../include/libzt/ext/ZeroTierOne/ext/miniupnpc/minixml.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/tim/Projects/ztnet/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building C object include/libzt/CMakeFiles/miniupnpc_obj.dir/ext/ZeroTierOne/ext/miniupnpc/minixml.c.o"
	cd /home/tim/Projects/ztnet/cmake-build-debug/include/libzt && /usr/lib64/ccache/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/miniupnpc_obj.dir/ext/ZeroTierOne/ext/miniupnpc/minixml.c.o   -c /home/tim/Projects/ztnet/include/libzt/ext/ZeroTierOne/ext/miniupnpc/minixml.c

include/libzt/CMakeFiles/miniupnpc_obj.dir/ext/ZeroTierOne/ext/miniupnpc/minixml.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/miniupnpc_obj.dir/ext/ZeroTierOne/ext/miniupnpc/minixml.c.i"
	cd /home/tim/Projects/ztnet/cmake-build-debug/include/libzt && /usr/lib64/ccache/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/tim/Projects/ztnet/include/libzt/ext/ZeroTierOne/ext/miniupnpc/minixml.c > CMakeFiles/miniupnpc_obj.dir/ext/ZeroTierOne/ext/miniupnpc/minixml.c.i

include/libzt/CMakeFiles/miniupnpc_obj.dir/ext/ZeroTierOne/ext/miniupnpc/minixml.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/miniupnpc_obj.dir/ext/ZeroTierOne/ext/miniupnpc/minixml.c.s"
	cd /home/tim/Projects/ztnet/cmake-build-debug/include/libzt && /usr/lib64/ccache/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/tim/Projects/ztnet/include/libzt/ext/ZeroTierOne/ext/miniupnpc/minixml.c -o CMakeFiles/miniupnpc_obj.dir/ext/ZeroTierOne/ext/miniupnpc/minixml.c.s

include/libzt/CMakeFiles/miniupnpc_obj.dir/ext/ZeroTierOne/ext/miniupnpc/portlistingparse.c.o: include/libzt/CMakeFiles/miniupnpc_obj.dir/flags.make
include/libzt/CMakeFiles/miniupnpc_obj.dir/ext/ZeroTierOne/ext/miniupnpc/portlistingparse.c.o: ../include/libzt/ext/ZeroTierOne/ext/miniupnpc/portlistingparse.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/tim/Projects/ztnet/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building C object include/libzt/CMakeFiles/miniupnpc_obj.dir/ext/ZeroTierOne/ext/miniupnpc/portlistingparse.c.o"
	cd /home/tim/Projects/ztnet/cmake-build-debug/include/libzt && /usr/lib64/ccache/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/miniupnpc_obj.dir/ext/ZeroTierOne/ext/miniupnpc/portlistingparse.c.o   -c /home/tim/Projects/ztnet/include/libzt/ext/ZeroTierOne/ext/miniupnpc/portlistingparse.c

include/libzt/CMakeFiles/miniupnpc_obj.dir/ext/ZeroTierOne/ext/miniupnpc/portlistingparse.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/miniupnpc_obj.dir/ext/ZeroTierOne/ext/miniupnpc/portlistingparse.c.i"
	cd /home/tim/Projects/ztnet/cmake-build-debug/include/libzt && /usr/lib64/ccache/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/tim/Projects/ztnet/include/libzt/ext/ZeroTierOne/ext/miniupnpc/portlistingparse.c > CMakeFiles/miniupnpc_obj.dir/ext/ZeroTierOne/ext/miniupnpc/portlistingparse.c.i

include/libzt/CMakeFiles/miniupnpc_obj.dir/ext/ZeroTierOne/ext/miniupnpc/portlistingparse.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/miniupnpc_obj.dir/ext/ZeroTierOne/ext/miniupnpc/portlistingparse.c.s"
	cd /home/tim/Projects/ztnet/cmake-build-debug/include/libzt && /usr/lib64/ccache/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/tim/Projects/ztnet/include/libzt/ext/ZeroTierOne/ext/miniupnpc/portlistingparse.c -o CMakeFiles/miniupnpc_obj.dir/ext/ZeroTierOne/ext/miniupnpc/portlistingparse.c.s

include/libzt/CMakeFiles/miniupnpc_obj.dir/ext/ZeroTierOne/ext/miniupnpc/receivedata.c.o: include/libzt/CMakeFiles/miniupnpc_obj.dir/flags.make
include/libzt/CMakeFiles/miniupnpc_obj.dir/ext/ZeroTierOne/ext/miniupnpc/receivedata.c.o: ../include/libzt/ext/ZeroTierOne/ext/miniupnpc/receivedata.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/tim/Projects/ztnet/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building C object include/libzt/CMakeFiles/miniupnpc_obj.dir/ext/ZeroTierOne/ext/miniupnpc/receivedata.c.o"
	cd /home/tim/Projects/ztnet/cmake-build-debug/include/libzt && /usr/lib64/ccache/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/miniupnpc_obj.dir/ext/ZeroTierOne/ext/miniupnpc/receivedata.c.o   -c /home/tim/Projects/ztnet/include/libzt/ext/ZeroTierOne/ext/miniupnpc/receivedata.c

include/libzt/CMakeFiles/miniupnpc_obj.dir/ext/ZeroTierOne/ext/miniupnpc/receivedata.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/miniupnpc_obj.dir/ext/ZeroTierOne/ext/miniupnpc/receivedata.c.i"
	cd /home/tim/Projects/ztnet/cmake-build-debug/include/libzt && /usr/lib64/ccache/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/tim/Projects/ztnet/include/libzt/ext/ZeroTierOne/ext/miniupnpc/receivedata.c > CMakeFiles/miniupnpc_obj.dir/ext/ZeroTierOne/ext/miniupnpc/receivedata.c.i

include/libzt/CMakeFiles/miniupnpc_obj.dir/ext/ZeroTierOne/ext/miniupnpc/receivedata.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/miniupnpc_obj.dir/ext/ZeroTierOne/ext/miniupnpc/receivedata.c.s"
	cd /home/tim/Projects/ztnet/cmake-build-debug/include/libzt && /usr/lib64/ccache/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/tim/Projects/ztnet/include/libzt/ext/ZeroTierOne/ext/miniupnpc/receivedata.c -o CMakeFiles/miniupnpc_obj.dir/ext/ZeroTierOne/ext/miniupnpc/receivedata.c.s

include/libzt/CMakeFiles/miniupnpc_obj.dir/ext/ZeroTierOne/ext/miniupnpc/upnpcommands.c.o: include/libzt/CMakeFiles/miniupnpc_obj.dir/flags.make
include/libzt/CMakeFiles/miniupnpc_obj.dir/ext/ZeroTierOne/ext/miniupnpc/upnpcommands.c.o: ../include/libzt/ext/ZeroTierOne/ext/miniupnpc/upnpcommands.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/tim/Projects/ztnet/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Building C object include/libzt/CMakeFiles/miniupnpc_obj.dir/ext/ZeroTierOne/ext/miniupnpc/upnpcommands.c.o"
	cd /home/tim/Projects/ztnet/cmake-build-debug/include/libzt && /usr/lib64/ccache/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/miniupnpc_obj.dir/ext/ZeroTierOne/ext/miniupnpc/upnpcommands.c.o   -c /home/tim/Projects/ztnet/include/libzt/ext/ZeroTierOne/ext/miniupnpc/upnpcommands.c

include/libzt/CMakeFiles/miniupnpc_obj.dir/ext/ZeroTierOne/ext/miniupnpc/upnpcommands.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/miniupnpc_obj.dir/ext/ZeroTierOne/ext/miniupnpc/upnpcommands.c.i"
	cd /home/tim/Projects/ztnet/cmake-build-debug/include/libzt && /usr/lib64/ccache/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/tim/Projects/ztnet/include/libzt/ext/ZeroTierOne/ext/miniupnpc/upnpcommands.c > CMakeFiles/miniupnpc_obj.dir/ext/ZeroTierOne/ext/miniupnpc/upnpcommands.c.i

include/libzt/CMakeFiles/miniupnpc_obj.dir/ext/ZeroTierOne/ext/miniupnpc/upnpcommands.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/miniupnpc_obj.dir/ext/ZeroTierOne/ext/miniupnpc/upnpcommands.c.s"
	cd /home/tim/Projects/ztnet/cmake-build-debug/include/libzt && /usr/lib64/ccache/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/tim/Projects/ztnet/include/libzt/ext/ZeroTierOne/ext/miniupnpc/upnpcommands.c -o CMakeFiles/miniupnpc_obj.dir/ext/ZeroTierOne/ext/miniupnpc/upnpcommands.c.s

include/libzt/CMakeFiles/miniupnpc_obj.dir/ext/ZeroTierOne/ext/miniupnpc/upnpdev.c.o: include/libzt/CMakeFiles/miniupnpc_obj.dir/flags.make
include/libzt/CMakeFiles/miniupnpc_obj.dir/ext/ZeroTierOne/ext/miniupnpc/upnpdev.c.o: ../include/libzt/ext/ZeroTierOne/ext/miniupnpc/upnpdev.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/tim/Projects/ztnet/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "Building C object include/libzt/CMakeFiles/miniupnpc_obj.dir/ext/ZeroTierOne/ext/miniupnpc/upnpdev.c.o"
	cd /home/tim/Projects/ztnet/cmake-build-debug/include/libzt && /usr/lib64/ccache/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/miniupnpc_obj.dir/ext/ZeroTierOne/ext/miniupnpc/upnpdev.c.o   -c /home/tim/Projects/ztnet/include/libzt/ext/ZeroTierOne/ext/miniupnpc/upnpdev.c

include/libzt/CMakeFiles/miniupnpc_obj.dir/ext/ZeroTierOne/ext/miniupnpc/upnpdev.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/miniupnpc_obj.dir/ext/ZeroTierOne/ext/miniupnpc/upnpdev.c.i"
	cd /home/tim/Projects/ztnet/cmake-build-debug/include/libzt && /usr/lib64/ccache/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/tim/Projects/ztnet/include/libzt/ext/ZeroTierOne/ext/miniupnpc/upnpdev.c > CMakeFiles/miniupnpc_obj.dir/ext/ZeroTierOne/ext/miniupnpc/upnpdev.c.i

include/libzt/CMakeFiles/miniupnpc_obj.dir/ext/ZeroTierOne/ext/miniupnpc/upnpdev.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/miniupnpc_obj.dir/ext/ZeroTierOne/ext/miniupnpc/upnpdev.c.s"
	cd /home/tim/Projects/ztnet/cmake-build-debug/include/libzt && /usr/lib64/ccache/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/tim/Projects/ztnet/include/libzt/ext/ZeroTierOne/ext/miniupnpc/upnpdev.c -o CMakeFiles/miniupnpc_obj.dir/ext/ZeroTierOne/ext/miniupnpc/upnpdev.c.s

include/libzt/CMakeFiles/miniupnpc_obj.dir/ext/ZeroTierOne/ext/miniupnpc/upnperrors.c.o: include/libzt/CMakeFiles/miniupnpc_obj.dir/flags.make
include/libzt/CMakeFiles/miniupnpc_obj.dir/ext/ZeroTierOne/ext/miniupnpc/upnperrors.c.o: ../include/libzt/ext/ZeroTierOne/ext/miniupnpc/upnperrors.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/tim/Projects/ztnet/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_12) "Building C object include/libzt/CMakeFiles/miniupnpc_obj.dir/ext/ZeroTierOne/ext/miniupnpc/upnperrors.c.o"
	cd /home/tim/Projects/ztnet/cmake-build-debug/include/libzt && /usr/lib64/ccache/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/miniupnpc_obj.dir/ext/ZeroTierOne/ext/miniupnpc/upnperrors.c.o   -c /home/tim/Projects/ztnet/include/libzt/ext/ZeroTierOne/ext/miniupnpc/upnperrors.c

include/libzt/CMakeFiles/miniupnpc_obj.dir/ext/ZeroTierOne/ext/miniupnpc/upnperrors.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/miniupnpc_obj.dir/ext/ZeroTierOne/ext/miniupnpc/upnperrors.c.i"
	cd /home/tim/Projects/ztnet/cmake-build-debug/include/libzt && /usr/lib64/ccache/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/tim/Projects/ztnet/include/libzt/ext/ZeroTierOne/ext/miniupnpc/upnperrors.c > CMakeFiles/miniupnpc_obj.dir/ext/ZeroTierOne/ext/miniupnpc/upnperrors.c.i

include/libzt/CMakeFiles/miniupnpc_obj.dir/ext/ZeroTierOne/ext/miniupnpc/upnperrors.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/miniupnpc_obj.dir/ext/ZeroTierOne/ext/miniupnpc/upnperrors.c.s"
	cd /home/tim/Projects/ztnet/cmake-build-debug/include/libzt && /usr/lib64/ccache/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/tim/Projects/ztnet/include/libzt/ext/ZeroTierOne/ext/miniupnpc/upnperrors.c -o CMakeFiles/miniupnpc_obj.dir/ext/ZeroTierOne/ext/miniupnpc/upnperrors.c.s

include/libzt/CMakeFiles/miniupnpc_obj.dir/ext/ZeroTierOne/ext/miniupnpc/upnpreplyparse.c.o: include/libzt/CMakeFiles/miniupnpc_obj.dir/flags.make
include/libzt/CMakeFiles/miniupnpc_obj.dir/ext/ZeroTierOne/ext/miniupnpc/upnpreplyparse.c.o: ../include/libzt/ext/ZeroTierOne/ext/miniupnpc/upnpreplyparse.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/tim/Projects/ztnet/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_13) "Building C object include/libzt/CMakeFiles/miniupnpc_obj.dir/ext/ZeroTierOne/ext/miniupnpc/upnpreplyparse.c.o"
	cd /home/tim/Projects/ztnet/cmake-build-debug/include/libzt && /usr/lib64/ccache/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/miniupnpc_obj.dir/ext/ZeroTierOne/ext/miniupnpc/upnpreplyparse.c.o   -c /home/tim/Projects/ztnet/include/libzt/ext/ZeroTierOne/ext/miniupnpc/upnpreplyparse.c

include/libzt/CMakeFiles/miniupnpc_obj.dir/ext/ZeroTierOne/ext/miniupnpc/upnpreplyparse.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/miniupnpc_obj.dir/ext/ZeroTierOne/ext/miniupnpc/upnpreplyparse.c.i"
	cd /home/tim/Projects/ztnet/cmake-build-debug/include/libzt && /usr/lib64/ccache/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/tim/Projects/ztnet/include/libzt/ext/ZeroTierOne/ext/miniupnpc/upnpreplyparse.c > CMakeFiles/miniupnpc_obj.dir/ext/ZeroTierOne/ext/miniupnpc/upnpreplyparse.c.i

include/libzt/CMakeFiles/miniupnpc_obj.dir/ext/ZeroTierOne/ext/miniupnpc/upnpreplyparse.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/miniupnpc_obj.dir/ext/ZeroTierOne/ext/miniupnpc/upnpreplyparse.c.s"
	cd /home/tim/Projects/ztnet/cmake-build-debug/include/libzt && /usr/lib64/ccache/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/tim/Projects/ztnet/include/libzt/ext/ZeroTierOne/ext/miniupnpc/upnpreplyparse.c -o CMakeFiles/miniupnpc_obj.dir/ext/ZeroTierOne/ext/miniupnpc/upnpreplyparse.c.s

miniupnpc_obj: include/libzt/CMakeFiles/miniupnpc_obj.dir/ext/ZeroTierOne/ext/miniupnpc/connecthostport.c.o
miniupnpc_obj: include/libzt/CMakeFiles/miniupnpc_obj.dir/ext/ZeroTierOne/ext/miniupnpc/igd_desc_parse.c.o
miniupnpc_obj: include/libzt/CMakeFiles/miniupnpc_obj.dir/ext/ZeroTierOne/ext/miniupnpc/minisoap.c.o
miniupnpc_obj: include/libzt/CMakeFiles/miniupnpc_obj.dir/ext/ZeroTierOne/ext/miniupnpc/minissdpc.c.o
miniupnpc_obj: include/libzt/CMakeFiles/miniupnpc_obj.dir/ext/ZeroTierOne/ext/miniupnpc/miniupnpc.c.o
miniupnpc_obj: include/libzt/CMakeFiles/miniupnpc_obj.dir/ext/ZeroTierOne/ext/miniupnpc/miniwget.c.o
miniupnpc_obj: include/libzt/CMakeFiles/miniupnpc_obj.dir/ext/ZeroTierOne/ext/miniupnpc/minixml.c.o
miniupnpc_obj: include/libzt/CMakeFiles/miniupnpc_obj.dir/ext/ZeroTierOne/ext/miniupnpc/portlistingparse.c.o
miniupnpc_obj: include/libzt/CMakeFiles/miniupnpc_obj.dir/ext/ZeroTierOne/ext/miniupnpc/receivedata.c.o
miniupnpc_obj: include/libzt/CMakeFiles/miniupnpc_obj.dir/ext/ZeroTierOne/ext/miniupnpc/upnpcommands.c.o
miniupnpc_obj: include/libzt/CMakeFiles/miniupnpc_obj.dir/ext/ZeroTierOne/ext/miniupnpc/upnpdev.c.o
miniupnpc_obj: include/libzt/CMakeFiles/miniupnpc_obj.dir/ext/ZeroTierOne/ext/miniupnpc/upnperrors.c.o
miniupnpc_obj: include/libzt/CMakeFiles/miniupnpc_obj.dir/ext/ZeroTierOne/ext/miniupnpc/upnpreplyparse.c.o
miniupnpc_obj: include/libzt/CMakeFiles/miniupnpc_obj.dir/build.make

.PHONY : miniupnpc_obj

# Rule to build all files generated by this target.
include/libzt/CMakeFiles/miniupnpc_obj.dir/build: miniupnpc_obj

.PHONY : include/libzt/CMakeFiles/miniupnpc_obj.dir/build

include/libzt/CMakeFiles/miniupnpc_obj.dir/clean:
	cd /home/tim/Projects/ztnet/cmake-build-debug/include/libzt && $(CMAKE_COMMAND) -P CMakeFiles/miniupnpc_obj.dir/cmake_clean.cmake
.PHONY : include/libzt/CMakeFiles/miniupnpc_obj.dir/clean

include/libzt/CMakeFiles/miniupnpc_obj.dir/depend:
	cd /home/tim/Projects/ztnet/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/tim/Projects/ztnet /home/tim/Projects/ztnet/include/libzt /home/tim/Projects/ztnet/cmake-build-debug /home/tim/Projects/ztnet/cmake-build-debug/include/libzt /home/tim/Projects/ztnet/cmake-build-debug/include/libzt/CMakeFiles/miniupnpc_obj.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : include/libzt/CMakeFiles/miniupnpc_obj.dir/depend

