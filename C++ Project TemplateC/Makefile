# Copyright © 2022 Rioni

# Permission is hereby granted, free of charge, to any person obtaining a copy of this
# software and associated documentation files (the “Software”), to deal in the Software without
# restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute,
# sublicense, and/or sell copies of the Software, and to permit persons to whom the Software
# is furnished to do so, subject to the following conditions:

# The above copyright notice and this permission notice shall
# be included in all copies or substantial portions of the Software.

# THE SOFTWARE IS PROVIDED “AS IS”, WITHOUT WARRANTY OF ANY KIND,
# EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL
# THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
# WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR
# IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

# Compiler settings - Can be customized.
CC = gcc
CXXFLAGS = -Wall -g -I.
CXXFLAGSRELEASE = -Wall -Os -I.
LDFLAGS = -pthread

# Makefile settings - Can be customized.
APPNAME = Project-Debug
APPNAMER = Project-Release
EXT = .c
SRCDIR = src
OBJDIR = obj
OBJDIRDEBUG = obj/debug
OBJDIRRELEASE = obj/release
BINDIR = bin

############## Do not change anything from here downwards! #############
# Recursive wildcar to search in all subdirectories no matter the depth.
# Source: https://stackoverflow.com/questions/4036191/sources-from-subdirectories-in-makefile
rwildcard=$(wildcard $1$2) $(foreach d,$(wildcard $1*),$(call rwildcard,$d/,$2))

# Look at all the subdirectories in the src directory and compile them.
SRC := $(call rwildcard,$(SRCDIR)/,*$(EXT))
OBJD = $(SRC:$(SRCDIR)/%$(EXT)=$(OBJDIRDEBUG)/%.o)
OBJR = $(SRC:$(SRCDIR)/%$(EXT)=$(OBJDIRRELEASE)/%.o)
# UNIX-based OS variables & settings
RM = rm -rf
# Windows-based OS variables & settings will be added later.

########################################################################
####################### Targets beginning here #########################
########################################################################

.PHONY: debug
debug: $(APPNAME)

# Builds the app
$(APPNAME): $(OBJD) 
	$(CC) $(CXXFLAGS) -o $@ $^ $(LDFLAGS)
	mkdir -p $(BINDIR)
	mv $(APPNAME) $(BINDIR)

# Building rule for .o files and its .c/.cpp in combination with all .h
$(OBJDIRDEBUG)/%.o: $(SRCDIR)/%$(EXT)
	mkdir -p $(@D)
	$(CC) $(CXXFLAGS) -o $@ -c $<

.PHONY: release
release: $(APPNAMER)

# Builds the app
$(APPNAMER): $(OBJR) 
	$(CC) $(CXXFLAGSRELEASE) -o $@ $^ $(LDFLAGS)
	mkdir -p $(BINDIR)
	mv $(APPNAMER) $(BINDIR)

# Building rule for .o files and its .c/.cpp in combination with all .h
$(OBJDIRRELEASE)/%.o: $(SRCDIR)/%$(EXT)
	mkdir -p $(@D)
	$(CC) $(CXXFLAGSRELEASE) -o $@ -c $<

################### Cleaning rules for Unix-based OS ###################
# Cleans complete project and also deletes objdir even if its not empty
.PHONY: clean
clean:
	$(RM) $(OBJDIR) $(BINDIR) $(APPNAME)
	