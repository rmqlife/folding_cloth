# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.5

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
CMAKE_SOURCE_DIR = /home/rmqlife/work_local/folding_cloth/src/libs/sqrt

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/rmqlife/work_local/folding_cloth/src/libs/sqrt

# Include any dependencies generated for this target.
include CMakeFiles/sqrt.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/sqrt.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/sqrt.dir/flags.make

CMakeFiles/sqrt.dir/mysqrt.cxx.o: CMakeFiles/sqrt.dir/flags.make
CMakeFiles/sqrt.dir/mysqrt.cxx.o: mysqrt.cxx
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/rmqlife/work_local/folding_cloth/src/libs/sqrt/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/sqrt.dir/mysqrt.cxx.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/sqrt.dir/mysqrt.cxx.o -c /home/rmqlife/work_local/folding_cloth/src/libs/sqrt/mysqrt.cxx

CMakeFiles/sqrt.dir/mysqrt.cxx.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/sqrt.dir/mysqrt.cxx.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/rmqlife/work_local/folding_cloth/src/libs/sqrt/mysqrt.cxx > CMakeFiles/sqrt.dir/mysqrt.cxx.i

CMakeFiles/sqrt.dir/mysqrt.cxx.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/sqrt.dir/mysqrt.cxx.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/rmqlife/work_local/folding_cloth/src/libs/sqrt/mysqrt.cxx -o CMakeFiles/sqrt.dir/mysqrt.cxx.s

CMakeFiles/sqrt.dir/mysqrt.cxx.o.requires:

.PHONY : CMakeFiles/sqrt.dir/mysqrt.cxx.o.requires

CMakeFiles/sqrt.dir/mysqrt.cxx.o.provides: CMakeFiles/sqrt.dir/mysqrt.cxx.o.requires
	$(MAKE) -f CMakeFiles/sqrt.dir/build.make CMakeFiles/sqrt.dir/mysqrt.cxx.o.provides.build
.PHONY : CMakeFiles/sqrt.dir/mysqrt.cxx.o.provides

CMakeFiles/sqrt.dir/mysqrt.cxx.o.provides.build: CMakeFiles/sqrt.dir/mysqrt.cxx.o


# Object files for target sqrt
sqrt_OBJECTS = \
"CMakeFiles/sqrt.dir/mysqrt.cxx.o"

# External object files for target sqrt
sqrt_EXTERNAL_OBJECTS =

libsqrt.a: CMakeFiles/sqrt.dir/mysqrt.cxx.o
libsqrt.a: CMakeFiles/sqrt.dir/build.make
libsqrt.a: CMakeFiles/sqrt.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/rmqlife/work_local/folding_cloth/src/libs/sqrt/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX static library libsqrt.a"
	$(CMAKE_COMMAND) -P CMakeFiles/sqrt.dir/cmake_clean_target.cmake
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/sqrt.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/sqrt.dir/build: libsqrt.a

.PHONY : CMakeFiles/sqrt.dir/build

CMakeFiles/sqrt.dir/requires: CMakeFiles/sqrt.dir/mysqrt.cxx.o.requires

.PHONY : CMakeFiles/sqrt.dir/requires

CMakeFiles/sqrt.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/sqrt.dir/cmake_clean.cmake
.PHONY : CMakeFiles/sqrt.dir/clean

CMakeFiles/sqrt.dir/depend:
	cd /home/rmqlife/work_local/folding_cloth/src/libs/sqrt && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/rmqlife/work_local/folding_cloth/src/libs/sqrt /home/rmqlife/work_local/folding_cloth/src/libs/sqrt /home/rmqlife/work_local/folding_cloth/src/libs/sqrt /home/rmqlife/work_local/folding_cloth/src/libs/sqrt /home/rmqlife/work_local/folding_cloth/src/libs/sqrt/CMakeFiles/sqrt.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/sqrt.dir/depend
