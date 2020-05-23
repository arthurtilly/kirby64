# Makefile to rebuild SM64 split image

################ Target Executable and Sources ###############

# BUILD_DIR is location where all build artifacts are placed
BUILD_DIR_BASE = build
VERSION = us
BUILD_DIR = $(BUILD_DIR_BASE)/$(VERSION)





##################### Compiler Options #######################
CROSS = mips-linux-gnu-
AS = $(CROSS)as
CC = $(CROSS)gcc
CPP     := cpp -P -Wno-trigraphs
LD = $(CROSS)ld
OBJDUMP = $(CROSS)objdump
OBJCOPY = $(CROSS)objcopy

TEXTURES_DIR := textures

INCLUDE_FLAGS := -I$(BUILD_DIR)
ASFLAGS = -mtune=vr4300 -march=vr4300 -mips3 $(INCLUDE_FLAGS)
CFLAGS  = -Wall -O2 -mtune=vr4300 -march=vr4300 -G 0 -c
LDFLAGS = -T $(BUILD_DIR)/$(LD_SCRIPT) -mips3 --no-check-sections -T undefined_syms.txt

####################### Other Tools #########################

# N64 tools
TOOLS_DIR = tools
N64CRC = tools/n64crc
N64GRAPHICS = $(TOOLS_DIR)/n64graphics
EMULATOR = mupen64plus
EMU_FLAGS = --noosd
LOADER = loader64
LOADER_FLAGS = -vwf
FixPath = $(subst /,/,$1)

ASM_DIRS := asm $(wildcard asm/ovl*)


S_FILES := $(foreach dir,$(ASM_DIRS),$(wildcard $(dir)/*.s))

BUILD_ASM_DIRS := $(foreach dir,$(ASM_DIRS),$(wildcard $(dir)/**/))

# Object files
O_FILES := $(foreach file,$(S_FILES),$(BUILD_DIR)/$(file:.s=.o))

######################## Targets #############################

NOEXTRACT ?= 0
# ifeq ($(NOEXTRACT),0)
DUMMY != ./extract_assets.py $(VERSION) >&2 || echo FAIL
ifeq ($(DUMMY),FAIL)
  $(error Failed to extract assets)
endif


ALL_DIRS = $(BUILD_DIR) $(addprefix $(BUILD_DIR)/,$(SRC_DIRS) $(INCLUDE_DIRS) $(ASM_DIRS) $(TEXTURES_DIR)/raw $(TEXTURES_DIR)/standalone)
DUMMY != mkdir -p $(BUILD_DIR)/$(ALL_DIRS)

default: all

# file dependencies generated by splitter
MAKEFILE_SPLIT = Makefile.split
include $(MAKEFILE_SPLIT)

all: $(BUILD_DIR)/$(TARGET).z64

clean:
	rm -rf build/

$(BUILD_DIR):
	mkdir -p $(ALL_DIRS)

$(BUILD_DIR)/%: %.png | $(BUILD_DIR)
	$(N64GRAPHICS) -i $@ -g $< -f $(lastword $(subst ., ,$@))

$(BUILD_DIR)/%.o: %.s Makefile $(RAW_TEXTURE_FILES) $(MAKEFILE_SPLIT) | $(BUILD_DIR)
	$(AS) $(ASFLAGS) -o $@ $<

$(BUILD_DIR)/%.o: %.c Makefile.as | $(BUILD_DIR)
	$(CC) $(CFLAGS) -o $@ $<

$(BUILD_DIR)/$(LD_SCRIPT): $(LD_SCRIPT)
	$(CPP) $(VERSION_CFLAGS) -DBUILD_DIR=$(BUILD_DIR) -MMD -MP -MT $@ -MF $@.d -o $@ $<

$(BUILD_DIR)/$(TARGET).elf: $(O_FILES) $(BUILD_DIR)/$(LD_SCRIPT) $(O_FILES)
	$(LD) $(LDFLAGS) -o $@ $(O_FILES) $(LIBS)

$(BUILD_DIR)/$(TARGET).bin: $(BUILD_DIR)/$(TARGET).elf
	$(OBJCOPY) $< $@ -O binary

# final z64 updates checksum
$(BUILD_DIR)/$(TARGET).z64: $(BUILD_DIR)/$(TARGET).bin
	cp $< $@
	$(N64CRC) $@

$(BUILD_DIR)/$(TARGET).hex: $(TARGET).z64
	xxd $< > $@

$(BUILD_DIR)/$(TARGET).objdump: $(BUILD_DIR)/$(TARGET).elf
	$(OBJDUMP) -D $< > $@

test: $(TARGET).z64
	$(EMULATOR) $(EMU_FLAGS) $<

load: $(TARGET).z64
	$(LOADER) $(LOADER_FLAGS) $<

.PHONY: all clean default diff test
