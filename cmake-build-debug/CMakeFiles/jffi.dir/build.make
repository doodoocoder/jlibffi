# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.12

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

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = "D:\Program Files\JetBrains\CLion 2018.2.3\bin\cmake\win\bin\cmake.exe"

# The command to remove a file.
RM = "D:\Program Files\JetBrains\CLion 2018.2.3\bin\cmake\win\bin\cmake.exe" -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = G:\jlibffi

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = G:\jlibffi\cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/jffi.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/jffi.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/jffi.dir/flags.make

CMakeFiles/jffi.dir/jffi.cpp.obj: CMakeFiles/jffi.dir/flags.make
CMakeFiles/jffi.dir/jffi.cpp.obj: CMakeFiles/jffi.dir/includes_CXX.rsp
CMakeFiles/jffi.dir/jffi.cpp.obj: ../jffi.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=G:\jlibffi\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/jffi.dir/jffi.cpp.obj"
	C:\mingw32\bin\g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\jffi.dir\jffi.cpp.obj -c G:\jlibffi\jffi.cpp

CMakeFiles/jffi.dir/jffi.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/jffi.dir/jffi.cpp.i"
	C:\mingw32\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E G:\jlibffi\jffi.cpp > CMakeFiles\jffi.dir\jffi.cpp.i

CMakeFiles/jffi.dir/jffi.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/jffi.dir/jffi.cpp.s"
	C:\mingw32\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S G:\jlibffi\jffi.cpp -o CMakeFiles\jffi.dir\jffi.cpp.s

# Object files for target jffi
jffi_OBJECTS = \
"CMakeFiles/jffi.dir/jffi.cpp.obj"

# External object files for target jffi
jffi_EXTERNAL_OBJECTS =

jffi.exe: CMakeFiles/jffi.dir/jffi.cpp.obj
jffi.exe: CMakeFiles/jffi.dir/build.make
jffi.exe: CMakeFiles/jffi.dir/linklibs.rsp
jffi.exe: CMakeFiles/jffi.dir/objects1.rsp
jffi.exe: CMakeFiles/jffi.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=G:\jlibffi\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable jffi.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\jffi.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/jffi.dir/build: jffi.exe

.PHONY : CMakeFiles/jffi.dir/build

CMakeFiles/jffi.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\jffi.dir\cmake_clean.cmake
.PHONY : CMakeFiles/jffi.dir/clean

CMakeFiles/jffi.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" G:\jlibffi G:\jlibffi G:\jlibffi\cmake-build-debug G:\jlibffi\cmake-build-debug G:\jlibffi\cmake-build-debug\CMakeFiles\jffi.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/jffi.dir/depend
