# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.19

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

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake

# The command to remove a file.
RM = /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/blakepow/upgraded-barnacle/cpp/rpg

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/blakepow/upgraded-barnacle/cpp/rpg/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/rpg.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/rpg.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/rpg.dir/flags.make

CMakeFiles/rpg.dir/main.cpp.o: CMakeFiles/rpg.dir/flags.make
CMakeFiles/rpg.dir/main.cpp.o: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/blakepow/upgraded-barnacle/cpp/rpg/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/rpg.dir/main.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/rpg.dir/main.cpp.o -c /Users/blakepow/upgraded-barnacle/cpp/rpg/main.cpp

CMakeFiles/rpg.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/rpg.dir/main.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/blakepow/upgraded-barnacle/cpp/rpg/main.cpp > CMakeFiles/rpg.dir/main.cpp.i

CMakeFiles/rpg.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/rpg.dir/main.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/blakepow/upgraded-barnacle/cpp/rpg/main.cpp -o CMakeFiles/rpg.dir/main.cpp.s

CMakeFiles/rpg.dir/monster.cpp.o: CMakeFiles/rpg.dir/flags.make
CMakeFiles/rpg.dir/monster.cpp.o: ../monster.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/blakepow/upgraded-barnacle/cpp/rpg/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/rpg.dir/monster.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/rpg.dir/monster.cpp.o -c /Users/blakepow/upgraded-barnacle/cpp/rpg/monster.cpp

CMakeFiles/rpg.dir/monster.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/rpg.dir/monster.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/blakepow/upgraded-barnacle/cpp/rpg/monster.cpp > CMakeFiles/rpg.dir/monster.cpp.i

CMakeFiles/rpg.dir/monster.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/rpg.dir/monster.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/blakepow/upgraded-barnacle/cpp/rpg/monster.cpp -o CMakeFiles/rpg.dir/monster.cpp.s

CMakeFiles/rpg.dir/hero.cpp.o: CMakeFiles/rpg.dir/flags.make
CMakeFiles/rpg.dir/hero.cpp.o: ../hero.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/blakepow/upgraded-barnacle/cpp/rpg/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/rpg.dir/hero.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/rpg.dir/hero.cpp.o -c /Users/blakepow/upgraded-barnacle/cpp/rpg/hero.cpp

CMakeFiles/rpg.dir/hero.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/rpg.dir/hero.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/blakepow/upgraded-barnacle/cpp/rpg/hero.cpp > CMakeFiles/rpg.dir/hero.cpp.i

CMakeFiles/rpg.dir/hero.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/rpg.dir/hero.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/blakepow/upgraded-barnacle/cpp/rpg/hero.cpp -o CMakeFiles/rpg.dir/hero.cpp.s

CMakeFiles/rpg.dir/path.cpp.o: CMakeFiles/rpg.dir/flags.make
CMakeFiles/rpg.dir/path.cpp.o: ../path.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/blakepow/upgraded-barnacle/cpp/rpg/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/rpg.dir/path.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/rpg.dir/path.cpp.o -c /Users/blakepow/upgraded-barnacle/cpp/rpg/path.cpp

CMakeFiles/rpg.dir/path.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/rpg.dir/path.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/blakepow/upgraded-barnacle/cpp/rpg/path.cpp > CMakeFiles/rpg.dir/path.cpp.i

CMakeFiles/rpg.dir/path.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/rpg.dir/path.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/blakepow/upgraded-barnacle/cpp/rpg/path.cpp -o CMakeFiles/rpg.dir/path.cpp.s

# Object files for target rpg
rpg_OBJECTS = \
"CMakeFiles/rpg.dir/main.cpp.o" \
"CMakeFiles/rpg.dir/monster.cpp.o" \
"CMakeFiles/rpg.dir/hero.cpp.o" \
"CMakeFiles/rpg.dir/path.cpp.o"

# External object files for target rpg
rpg_EXTERNAL_OBJECTS =

rpg: CMakeFiles/rpg.dir/main.cpp.o
rpg: CMakeFiles/rpg.dir/monster.cpp.o
rpg: CMakeFiles/rpg.dir/hero.cpp.o
rpg: CMakeFiles/rpg.dir/path.cpp.o
rpg: CMakeFiles/rpg.dir/build.make
rpg: CMakeFiles/rpg.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/blakepow/upgraded-barnacle/cpp/rpg/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Linking CXX executable rpg"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/rpg.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/rpg.dir/build: rpg

.PHONY : CMakeFiles/rpg.dir/build

CMakeFiles/rpg.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/rpg.dir/cmake_clean.cmake
.PHONY : CMakeFiles/rpg.dir/clean

CMakeFiles/rpg.dir/depend:
	cd /Users/blakepow/upgraded-barnacle/cpp/rpg/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/blakepow/upgraded-barnacle/cpp/rpg /Users/blakepow/upgraded-barnacle/cpp/rpg /Users/blakepow/upgraded-barnacle/cpp/rpg/cmake-build-debug /Users/blakepow/upgraded-barnacle/cpp/rpg/cmake-build-debug /Users/blakepow/upgraded-barnacle/cpp/rpg/cmake-build-debug/CMakeFiles/rpg.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/rpg.dir/depend

