CC := gcc
CFLAGS := -I . -Wall -Wextra -Wno-unused-parameter -pedantic -std=c99 -O3 -s
PROGRAMS := iplfontutil n64graphics n64crc

iplfontutil_SOURCES := iplfontutil.c
iplfontutil_CFLAGS := -O2 # faster compile time

n64crc_SOURCES := n64crc.c
n64crc_CFLAGS := -O2 # faster compile time

n64graphics_SOURCES := n64graphics.c utils.c
n64graphics_CFLAGS  := -DN64GRAPHICS_STANDALONE

# who cares if you have armips, just use our version
# ifeq (, $(shell which armips 2> /dev/null))
CXX_PROGRAMS := armips
# endif

default: all

all: $(PROGRAMS) $(CXX_PROGRAMS)

armips: armips.cpp
	$(CXX) $(CXXFLAGS) -fno-exceptions -fno-rtti -pipe $^ -o $@ -lpthread $(ARMIPS_FLAGS)

clean:
	$(RM) $(PROGRAMS) $(CXXPROGRAMS)

define COMPILE
$(1): $($1_SOURCES)
	$(CC) $(CFLAGS) $$^ -lm -o $$@ $($1_CFLAGS)
endef

$(foreach p,$(PROGRAMS),$(eval $(call COMPILE,$(p))))

# n64crc: n64crc.c
# 	$(CC) -o $< $@
