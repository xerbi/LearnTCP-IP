# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


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
CMAKE_SOURCE_DIR = /home/andrey/worckSpace/LearnTCP-IP

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/andrey/worckSpace/LearnTCP-IP/build

# Include any dependencies generated for this target.
include Client/CMakeFiles/Client.dir/depend.make

# Include the progress variables for this target.
include Client/CMakeFiles/Client.dir/progress.make

# Include the compile flags for this target's objects.
include Client/CMakeFiles/Client.dir/flags.make

Client/CMakeFiles/Client.dir/clientMain.cpp.o: Client/CMakeFiles/Client.dir/flags.make
Client/CMakeFiles/Client.dir/clientMain.cpp.o: ../Client/clientMain.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/andrey/worckSpace/LearnTCP-IP/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object Client/CMakeFiles/Client.dir/clientMain.cpp.o"
	cd /home/andrey/worckSpace/LearnTCP-IP/build/Client && /bin/x86_64-linux-gnu-g++-9  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Client.dir/clientMain.cpp.o -c /home/andrey/worckSpace/LearnTCP-IP/Client/clientMain.cpp

Client/CMakeFiles/Client.dir/clientMain.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Client.dir/clientMain.cpp.i"
	cd /home/andrey/worckSpace/LearnTCP-IP/build/Client && /bin/x86_64-linux-gnu-g++-9 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/andrey/worckSpace/LearnTCP-IP/Client/clientMain.cpp > CMakeFiles/Client.dir/clientMain.cpp.i

Client/CMakeFiles/Client.dir/clientMain.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Client.dir/clientMain.cpp.s"
	cd /home/andrey/worckSpace/LearnTCP-IP/build/Client && /bin/x86_64-linux-gnu-g++-9 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/andrey/worckSpace/LearnTCP-IP/Client/clientMain.cpp -o CMakeFiles/Client.dir/clientMain.cpp.s

# Object files for target Client
Client_OBJECTS = \
"CMakeFiles/Client.dir/clientMain.cpp.o"

# External object files for target Client
Client_EXTERNAL_OBJECTS =

Client/Client: Client/CMakeFiles/Client.dir/clientMain.cpp.o
Client/Client: Client/CMakeFiles/Client.dir/build.make
Client/Client: Client/CMakeFiles/Client.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/andrey/worckSpace/LearnTCP-IP/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable Client"
	cd /home/andrey/worckSpace/LearnTCP-IP/build/Client && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Client.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
Client/CMakeFiles/Client.dir/build: Client/Client

.PHONY : Client/CMakeFiles/Client.dir/build

Client/CMakeFiles/Client.dir/clean:
	cd /home/andrey/worckSpace/LearnTCP-IP/build/Client && $(CMAKE_COMMAND) -P CMakeFiles/Client.dir/cmake_clean.cmake
.PHONY : Client/CMakeFiles/Client.dir/clean

Client/CMakeFiles/Client.dir/depend:
	cd /home/andrey/worckSpace/LearnTCP-IP/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/andrey/worckSpace/LearnTCP-IP /home/andrey/worckSpace/LearnTCP-IP/Client /home/andrey/worckSpace/LearnTCP-IP/build /home/andrey/worckSpace/LearnTCP-IP/build/Client /home/andrey/worckSpace/LearnTCP-IP/build/Client/CMakeFiles/Client.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : Client/CMakeFiles/Client.dir/depend

