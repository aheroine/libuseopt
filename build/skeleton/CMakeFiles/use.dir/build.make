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
CMAKE_COMMAND = /usr/local/bin/cmake

# The command to remove a file.
RM = /usr/local/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/jl/tmp.ZSiBhkFYF2

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/jl/tmp.ZSiBhkFYF2/build

# Include any dependencies generated for this target.
include skeleton/CMakeFiles/use.dir/depend.make

# Include the progress variables for this target.
include skeleton/CMakeFiles/use.dir/progress.make

# Include the compile flags for this target's objects.
include skeleton/CMakeFiles/use.dir/flags.make

skeleton/CMakeFiles/use.dir/find_caller.cpp.o: skeleton/CMakeFiles/use.dir/flags.make
skeleton/CMakeFiles/use.dir/find_caller.cpp.o: ../skeleton/find_caller.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/jl/tmp.ZSiBhkFYF2/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object skeleton/CMakeFiles/use.dir/find_caller.cpp.o"
	cd /home/jl/tmp.ZSiBhkFYF2/build/skeleton && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/use.dir/find_caller.cpp.o -c /home/jl/tmp.ZSiBhkFYF2/skeleton/find_caller.cpp

skeleton/CMakeFiles/use.dir/find_caller.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/use.dir/find_caller.cpp.i"
	cd /home/jl/tmp.ZSiBhkFYF2/build/skeleton && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/jl/tmp.ZSiBhkFYF2/skeleton/find_caller.cpp > CMakeFiles/use.dir/find_caller.cpp.i

skeleton/CMakeFiles/use.dir/find_caller.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/use.dir/find_caller.cpp.s"
	cd /home/jl/tmp.ZSiBhkFYF2/build/skeleton && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/jl/tmp.ZSiBhkFYF2/skeleton/find_caller.cpp -o CMakeFiles/use.dir/find_caller.cpp.s

skeleton/CMakeFiles/use.dir/run_as_main_pass.cpp.o: skeleton/CMakeFiles/use.dir/flags.make
skeleton/CMakeFiles/use.dir/run_as_main_pass.cpp.o: ../skeleton/run_as_main_pass.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/jl/tmp.ZSiBhkFYF2/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object skeleton/CMakeFiles/use.dir/run_as_main_pass.cpp.o"
	cd /home/jl/tmp.ZSiBhkFYF2/build/skeleton && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/use.dir/run_as_main_pass.cpp.o -c /home/jl/tmp.ZSiBhkFYF2/skeleton/run_as_main_pass.cpp

skeleton/CMakeFiles/use.dir/run_as_main_pass.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/use.dir/run_as_main_pass.cpp.i"
	cd /home/jl/tmp.ZSiBhkFYF2/build/skeleton && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/jl/tmp.ZSiBhkFYF2/skeleton/run_as_main_pass.cpp > CMakeFiles/use.dir/run_as_main_pass.cpp.i

skeleton/CMakeFiles/use.dir/run_as_main_pass.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/use.dir/run_as_main_pass.cpp.s"
	cd /home/jl/tmp.ZSiBhkFYF2/build/skeleton && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/jl/tmp.ZSiBhkFYF2/skeleton/run_as_main_pass.cpp -o CMakeFiles/use.dir/run_as_main_pass.cpp.s

# Object files for target use
use_OBJECTS = \
"CMakeFiles/use.dir/find_caller.cpp.o" \
"CMakeFiles/use.dir/run_as_main_pass.cpp.o"

# External object files for target use
use_EXTERNAL_OBJECTS =

skeleton/libuse.so: skeleton/CMakeFiles/use.dir/find_caller.cpp.o
skeleton/libuse.so: skeleton/CMakeFiles/use.dir/run_as_main_pass.cpp.o
skeleton/libuse.so: skeleton/CMakeFiles/use.dir/build.make
skeleton/libuse.so: skeleton/CMakeFiles/use.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/jl/tmp.ZSiBhkFYF2/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX shared module libuse.so"
	cd /home/jl/tmp.ZSiBhkFYF2/build/skeleton && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/use.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
skeleton/CMakeFiles/use.dir/build: skeleton/libuse.so

.PHONY : skeleton/CMakeFiles/use.dir/build

skeleton/CMakeFiles/use.dir/clean:
	cd /home/jl/tmp.ZSiBhkFYF2/build/skeleton && $(CMAKE_COMMAND) -P CMakeFiles/use.dir/cmake_clean.cmake
.PHONY : skeleton/CMakeFiles/use.dir/clean

skeleton/CMakeFiles/use.dir/depend:
	cd /home/jl/tmp.ZSiBhkFYF2/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/jl/tmp.ZSiBhkFYF2 /home/jl/tmp.ZSiBhkFYF2/skeleton /home/jl/tmp.ZSiBhkFYF2/build /home/jl/tmp.ZSiBhkFYF2/build/skeleton /home/jl/tmp.ZSiBhkFYF2/build/skeleton/CMakeFiles/use.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : skeleton/CMakeFiles/use.dir/depend
