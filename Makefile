# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

# Default target executed when no arguments are given to make.
default_target: all

.PHONY : default_target

# Allow only one "make -f Makefile2" at a time, but pass parallelism.
.NOTPARALLEL:


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
CMAKE_SOURCE_DIR = /home/whuty/fun/SystemMonitor

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/whuty/fun/SystemMonitor

#=============================================================================
# Targets provided globally by CMake.

# Special rule for the target rebuild_cache
rebuild_cache:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Running CMake to regenerate build system..."
	/usr/bin/cmake -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR)
.PHONY : rebuild_cache

# Special rule for the target rebuild_cache
rebuild_cache/fast: rebuild_cache

.PHONY : rebuild_cache/fast

# Special rule for the target edit_cache
edit_cache:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "No interactive CMake dialog available..."
	/usr/bin/cmake -E echo No\ interactive\ CMake\ dialog\ available.
.PHONY : edit_cache

# Special rule for the target edit_cache
edit_cache/fast: edit_cache

.PHONY : edit_cache/fast

# The main all target
all: cmake_check_build_system
	$(CMAKE_COMMAND) -E cmake_progress_start /home/whuty/fun/SystemMonitor/CMakeFiles /home/whuty/fun/SystemMonitor/CMakeFiles/progress.marks
	$(MAKE) -f CMakeFiles/Makefile2 all
	$(CMAKE_COMMAND) -E cmake_progress_start /home/whuty/fun/SystemMonitor/CMakeFiles 0
.PHONY : all

# The main clean target
clean:
	$(MAKE) -f CMakeFiles/Makefile2 clean
.PHONY : clean

# The main clean target
clean/fast: clean

.PHONY : clean/fast

# Prepare targets for installation.
preinstall: all
	$(MAKE) -f CMakeFiles/Makefile2 preinstall
.PHONY : preinstall

# Prepare targets for installation.
preinstall/fast:
	$(MAKE) -f CMakeFiles/Makefile2 preinstall
.PHONY : preinstall/fast

# clear depends
depend:
	$(CMAKE_COMMAND) -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR) --check-build-system CMakeFiles/Makefile.cmake 1
.PHONY : depend

#=============================================================================
# Target rules for targets named SystemMonitor

# Build rule for target.
SystemMonitor: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 SystemMonitor
.PHONY : SystemMonitor

# fast build rule for target.
SystemMonitor/fast:
	$(MAKE) -f CMakeFiles/SystemMonitor.dir/build.make CMakeFiles/SystemMonitor.dir/build
.PHONY : SystemMonitor/fast

src/test.o: src/test.cpp.o

.PHONY : src/test.o

# target to build an object file
src/test.cpp.o:
	$(MAKE) -f CMakeFiles/SystemMonitor.dir/build.make CMakeFiles/SystemMonitor.dir/src/test.cpp.o
.PHONY : src/test.cpp.o

src/test.i: src/test.cpp.i

.PHONY : src/test.i

# target to preprocess a source file
src/test.cpp.i:
	$(MAKE) -f CMakeFiles/SystemMonitor.dir/build.make CMakeFiles/SystemMonitor.dir/src/test.cpp.i
.PHONY : src/test.cpp.i

src/test.s: src/test.cpp.s

.PHONY : src/test.s

# target to generate assembly for a file
src/test.cpp.s:
	$(MAKE) -f CMakeFiles/SystemMonitor.dir/build.make CMakeFiles/SystemMonitor.dir/src/test.cpp.s
.PHONY : src/test.cpp.s

vendor/imgui/backends/imgui_impl_glfw.o: vendor/imgui/backends/imgui_impl_glfw.cpp.o

.PHONY : vendor/imgui/backends/imgui_impl_glfw.o

# target to build an object file
vendor/imgui/backends/imgui_impl_glfw.cpp.o:
	$(MAKE) -f CMakeFiles/SystemMonitor.dir/build.make CMakeFiles/SystemMonitor.dir/vendor/imgui/backends/imgui_impl_glfw.cpp.o
.PHONY : vendor/imgui/backends/imgui_impl_glfw.cpp.o

vendor/imgui/backends/imgui_impl_glfw.i: vendor/imgui/backends/imgui_impl_glfw.cpp.i

.PHONY : vendor/imgui/backends/imgui_impl_glfw.i

# target to preprocess a source file
vendor/imgui/backends/imgui_impl_glfw.cpp.i:
	$(MAKE) -f CMakeFiles/SystemMonitor.dir/build.make CMakeFiles/SystemMonitor.dir/vendor/imgui/backends/imgui_impl_glfw.cpp.i
.PHONY : vendor/imgui/backends/imgui_impl_glfw.cpp.i

vendor/imgui/backends/imgui_impl_glfw.s: vendor/imgui/backends/imgui_impl_glfw.cpp.s

.PHONY : vendor/imgui/backends/imgui_impl_glfw.s

# target to generate assembly for a file
vendor/imgui/backends/imgui_impl_glfw.cpp.s:
	$(MAKE) -f CMakeFiles/SystemMonitor.dir/build.make CMakeFiles/SystemMonitor.dir/vendor/imgui/backends/imgui_impl_glfw.cpp.s
.PHONY : vendor/imgui/backends/imgui_impl_glfw.cpp.s

vendor/imgui/backends/imgui_impl_opengl3.o: vendor/imgui/backends/imgui_impl_opengl3.cpp.o

.PHONY : vendor/imgui/backends/imgui_impl_opengl3.o

# target to build an object file
vendor/imgui/backends/imgui_impl_opengl3.cpp.o:
	$(MAKE) -f CMakeFiles/SystemMonitor.dir/build.make CMakeFiles/SystemMonitor.dir/vendor/imgui/backends/imgui_impl_opengl3.cpp.o
.PHONY : vendor/imgui/backends/imgui_impl_opengl3.cpp.o

vendor/imgui/backends/imgui_impl_opengl3.i: vendor/imgui/backends/imgui_impl_opengl3.cpp.i

.PHONY : vendor/imgui/backends/imgui_impl_opengl3.i

# target to preprocess a source file
vendor/imgui/backends/imgui_impl_opengl3.cpp.i:
	$(MAKE) -f CMakeFiles/SystemMonitor.dir/build.make CMakeFiles/SystemMonitor.dir/vendor/imgui/backends/imgui_impl_opengl3.cpp.i
.PHONY : vendor/imgui/backends/imgui_impl_opengl3.cpp.i

vendor/imgui/backends/imgui_impl_opengl3.s: vendor/imgui/backends/imgui_impl_opengl3.cpp.s

.PHONY : vendor/imgui/backends/imgui_impl_opengl3.s

# target to generate assembly for a file
vendor/imgui/backends/imgui_impl_opengl3.cpp.s:
	$(MAKE) -f CMakeFiles/SystemMonitor.dir/build.make CMakeFiles/SystemMonitor.dir/vendor/imgui/backends/imgui_impl_opengl3.cpp.s
.PHONY : vendor/imgui/backends/imgui_impl_opengl3.cpp.s

vendor/imgui/imgui.o: vendor/imgui/imgui.cpp.o

.PHONY : vendor/imgui/imgui.o

# target to build an object file
vendor/imgui/imgui.cpp.o:
	$(MAKE) -f CMakeFiles/SystemMonitor.dir/build.make CMakeFiles/SystemMonitor.dir/vendor/imgui/imgui.cpp.o
.PHONY : vendor/imgui/imgui.cpp.o

vendor/imgui/imgui.i: vendor/imgui/imgui.cpp.i

.PHONY : vendor/imgui/imgui.i

# target to preprocess a source file
vendor/imgui/imgui.cpp.i:
	$(MAKE) -f CMakeFiles/SystemMonitor.dir/build.make CMakeFiles/SystemMonitor.dir/vendor/imgui/imgui.cpp.i
.PHONY : vendor/imgui/imgui.cpp.i

vendor/imgui/imgui.s: vendor/imgui/imgui.cpp.s

.PHONY : vendor/imgui/imgui.s

# target to generate assembly for a file
vendor/imgui/imgui.cpp.s:
	$(MAKE) -f CMakeFiles/SystemMonitor.dir/build.make CMakeFiles/SystemMonitor.dir/vendor/imgui/imgui.cpp.s
.PHONY : vendor/imgui/imgui.cpp.s

vendor/imgui/imgui_demo.o: vendor/imgui/imgui_demo.cpp.o

.PHONY : vendor/imgui/imgui_demo.o

# target to build an object file
vendor/imgui/imgui_demo.cpp.o:
	$(MAKE) -f CMakeFiles/SystemMonitor.dir/build.make CMakeFiles/SystemMonitor.dir/vendor/imgui/imgui_demo.cpp.o
.PHONY : vendor/imgui/imgui_demo.cpp.o

vendor/imgui/imgui_demo.i: vendor/imgui/imgui_demo.cpp.i

.PHONY : vendor/imgui/imgui_demo.i

# target to preprocess a source file
vendor/imgui/imgui_demo.cpp.i:
	$(MAKE) -f CMakeFiles/SystemMonitor.dir/build.make CMakeFiles/SystemMonitor.dir/vendor/imgui/imgui_demo.cpp.i
.PHONY : vendor/imgui/imgui_demo.cpp.i

vendor/imgui/imgui_demo.s: vendor/imgui/imgui_demo.cpp.s

.PHONY : vendor/imgui/imgui_demo.s

# target to generate assembly for a file
vendor/imgui/imgui_demo.cpp.s:
	$(MAKE) -f CMakeFiles/SystemMonitor.dir/build.make CMakeFiles/SystemMonitor.dir/vendor/imgui/imgui_demo.cpp.s
.PHONY : vendor/imgui/imgui_demo.cpp.s

vendor/imgui/imgui_draw.o: vendor/imgui/imgui_draw.cpp.o

.PHONY : vendor/imgui/imgui_draw.o

# target to build an object file
vendor/imgui/imgui_draw.cpp.o:
	$(MAKE) -f CMakeFiles/SystemMonitor.dir/build.make CMakeFiles/SystemMonitor.dir/vendor/imgui/imgui_draw.cpp.o
.PHONY : vendor/imgui/imgui_draw.cpp.o

vendor/imgui/imgui_draw.i: vendor/imgui/imgui_draw.cpp.i

.PHONY : vendor/imgui/imgui_draw.i

# target to preprocess a source file
vendor/imgui/imgui_draw.cpp.i:
	$(MAKE) -f CMakeFiles/SystemMonitor.dir/build.make CMakeFiles/SystemMonitor.dir/vendor/imgui/imgui_draw.cpp.i
.PHONY : vendor/imgui/imgui_draw.cpp.i

vendor/imgui/imgui_draw.s: vendor/imgui/imgui_draw.cpp.s

.PHONY : vendor/imgui/imgui_draw.s

# target to generate assembly for a file
vendor/imgui/imgui_draw.cpp.s:
	$(MAKE) -f CMakeFiles/SystemMonitor.dir/build.make CMakeFiles/SystemMonitor.dir/vendor/imgui/imgui_draw.cpp.s
.PHONY : vendor/imgui/imgui_draw.cpp.s

vendor/imgui/imgui_tables.o: vendor/imgui/imgui_tables.cpp.o

.PHONY : vendor/imgui/imgui_tables.o

# target to build an object file
vendor/imgui/imgui_tables.cpp.o:
	$(MAKE) -f CMakeFiles/SystemMonitor.dir/build.make CMakeFiles/SystemMonitor.dir/vendor/imgui/imgui_tables.cpp.o
.PHONY : vendor/imgui/imgui_tables.cpp.o

vendor/imgui/imgui_tables.i: vendor/imgui/imgui_tables.cpp.i

.PHONY : vendor/imgui/imgui_tables.i

# target to preprocess a source file
vendor/imgui/imgui_tables.cpp.i:
	$(MAKE) -f CMakeFiles/SystemMonitor.dir/build.make CMakeFiles/SystemMonitor.dir/vendor/imgui/imgui_tables.cpp.i
.PHONY : vendor/imgui/imgui_tables.cpp.i

vendor/imgui/imgui_tables.s: vendor/imgui/imgui_tables.cpp.s

.PHONY : vendor/imgui/imgui_tables.s

# target to generate assembly for a file
vendor/imgui/imgui_tables.cpp.s:
	$(MAKE) -f CMakeFiles/SystemMonitor.dir/build.make CMakeFiles/SystemMonitor.dir/vendor/imgui/imgui_tables.cpp.s
.PHONY : vendor/imgui/imgui_tables.cpp.s

vendor/imgui/imgui_widgets.o: vendor/imgui/imgui_widgets.cpp.o

.PHONY : vendor/imgui/imgui_widgets.o

# target to build an object file
vendor/imgui/imgui_widgets.cpp.o:
	$(MAKE) -f CMakeFiles/SystemMonitor.dir/build.make CMakeFiles/SystemMonitor.dir/vendor/imgui/imgui_widgets.cpp.o
.PHONY : vendor/imgui/imgui_widgets.cpp.o

vendor/imgui/imgui_widgets.i: vendor/imgui/imgui_widgets.cpp.i

.PHONY : vendor/imgui/imgui_widgets.i

# target to preprocess a source file
vendor/imgui/imgui_widgets.cpp.i:
	$(MAKE) -f CMakeFiles/SystemMonitor.dir/build.make CMakeFiles/SystemMonitor.dir/vendor/imgui/imgui_widgets.cpp.i
.PHONY : vendor/imgui/imgui_widgets.cpp.i

vendor/imgui/imgui_widgets.s: vendor/imgui/imgui_widgets.cpp.s

.PHONY : vendor/imgui/imgui_widgets.s

# target to generate assembly for a file
vendor/imgui/imgui_widgets.cpp.s:
	$(MAKE) -f CMakeFiles/SystemMonitor.dir/build.make CMakeFiles/SystemMonitor.dir/vendor/imgui/imgui_widgets.cpp.s
.PHONY : vendor/imgui/imgui_widgets.cpp.s

# Help Target
help:
	@echo "The following are some of the valid targets for this Makefile:"
	@echo "... all (the default if no target is provided)"
	@echo "... clean"
	@echo "... depend"
	@echo "... rebuild_cache"
	@echo "... edit_cache"
	@echo "... SystemMonitor"
	@echo "... src/test.o"
	@echo "... src/test.i"
	@echo "... src/test.s"
	@echo "... vendor/imgui/backends/imgui_impl_glfw.o"
	@echo "... vendor/imgui/backends/imgui_impl_glfw.i"
	@echo "... vendor/imgui/backends/imgui_impl_glfw.s"
	@echo "... vendor/imgui/backends/imgui_impl_opengl3.o"
	@echo "... vendor/imgui/backends/imgui_impl_opengl3.i"
	@echo "... vendor/imgui/backends/imgui_impl_opengl3.s"
	@echo "... vendor/imgui/imgui.o"
	@echo "... vendor/imgui/imgui.i"
	@echo "... vendor/imgui/imgui.s"
	@echo "... vendor/imgui/imgui_demo.o"
	@echo "... vendor/imgui/imgui_demo.i"
	@echo "... vendor/imgui/imgui_demo.s"
	@echo "... vendor/imgui/imgui_draw.o"
	@echo "... vendor/imgui/imgui_draw.i"
	@echo "... vendor/imgui/imgui_draw.s"
	@echo "... vendor/imgui/imgui_tables.o"
	@echo "... vendor/imgui/imgui_tables.i"
	@echo "... vendor/imgui/imgui_tables.s"
	@echo "... vendor/imgui/imgui_widgets.o"
	@echo "... vendor/imgui/imgui_widgets.i"
	@echo "... vendor/imgui/imgui_widgets.s"
.PHONY : help



#=============================================================================
# Special targets to cleanup operation of make.

# Special rule to run CMake to check the build system integrity.
# No rule that depends on this can have commands that come from listfiles
# because they might be regenerated.
cmake_check_build_system:
	$(CMAKE_COMMAND) -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR) --check-build-system CMakeFiles/Makefile.cmake 0
.PHONY : cmake_check_build_system

