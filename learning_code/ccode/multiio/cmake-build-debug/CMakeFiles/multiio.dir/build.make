# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.20

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = "D:\programe-software\CLion 2021.2\bin\cmake\win\bin\cmake.exe"

# The command to remove a file.
RM = "D:\programe-software\CLion 2021.2\bin\cmake\win\bin\cmake.exe" -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = D:\workspace\ccode\multiio

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = D:\workspace\ccode\multiio\cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/multiio.dir/depend.make
# Include the progress variables for this target.
include CMakeFiles/multiio.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/multiio.dir/flags.make

CMakeFiles/multiio.dir/main.c.obj: CMakeFiles/multiio.dir/flags.make
CMakeFiles/multiio.dir/main.c.obj: ../main.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=D:\workspace\ccode\multiio\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/multiio.dir/main.c.obj"
	D:\programe-software\MinGW-64\mingw64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles\multiio.dir\main.c.obj -c D:\workspace\ccode\multiio\main.c

CMakeFiles/multiio.dir/main.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/multiio.dir/main.c.i"
	D:\programe-software\MinGW-64\mingw64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E D:\workspace\ccode\multiio\main.c > CMakeFiles\multiio.dir\main.c.i

CMakeFiles/multiio.dir/main.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/multiio.dir/main.c.s"
	D:\programe-software\MinGW-64\mingw64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S D:\workspace\ccode\multiio\main.c -o CMakeFiles\multiio.dir\main.c.s

# Object files for target multiio
multiio_OBJECTS = \
"CMakeFiles/multiio.dir/main.c.obj"

# External object files for target multiio
multiio_EXTERNAL_OBJECTS =

multiio.exe: CMakeFiles/multiio.dir/main.c.obj
multiio.exe: CMakeFiles/multiio.dir/build.make
multiio.exe: CMakeFiles/multiio.dir/linklibs.rsp
multiio.exe: CMakeFiles/multiio.dir/objects1.rsp
multiio.exe: CMakeFiles/multiio.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=D:\workspace\ccode\multiio\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable multiio.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\multiio.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/multiio.dir/build: multiio.exe
.PHONY : CMakeFiles/multiio.dir/build

CMakeFiles/multiio.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\multiio.dir\cmake_clean.cmake
.PHONY : CMakeFiles/multiio.dir/clean

CMakeFiles/multiio.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" D:\workspace\ccode\multiio D:\workspace\ccode\multiio D:\workspace\ccode\multiio\cmake-build-debug D:\workspace\ccode\multiio\cmake-build-debug D:\workspace\ccode\multiio\cmake-build-debug\CMakeFiles\multiio.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/multiio.dir/depend
