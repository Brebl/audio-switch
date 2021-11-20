#!/usr/bin/make -f
# Copyright (C) 2021 Antti Helminen
# This program is free software; you can redistribute
# it and/or modify it under the terms of the GNU
# General Public License

#This makefile is a bit overkill for avr. But hey, why not.

################################
# System configuration
################################
SHELL = /bin/bash

.SUFFIXES:
.SUFFIXES: .c .o .h .dep

#hardware
TARGET 			:= audio_switch
TYPE			:= Display-version
VER				:= $(shell git tag | sed -n '$$p')
MCU   			:= attiny4313
F_CPU 			:= 128000UL
BAUD  			:= 9600UL
PROGRAMMER_TYPE := avrispmkII
PROGRAMMER_ARGS  = -P "/dev/ttyUSB0" -C "$(resdir)/avrdude.conf" -B 400
# bit: 0000 0001 0010 0011 0100 0101 0110 0111 1000 1001 1010 1011 1100 1101 1110 1111
# Hex: 0	1    2	  3	   4	5	 6	  7	   8	9	 A	  B	   C    D	 E	  F
LFUSE 			:= 0xe6
HFUSE 			:= 0xdf
EFUSE 			:= 0xff

#compiler/linker options
CFLAGS	 		= -Os -g -Wall -funsigned-char -funsigned-bitfields -fpack-struct -fshort-enums -ffunction-sections -fdata-sections $(DEFS) $(INC)
DEFS			= -std=gnu11 -DF_CPU=$(F_CPU) -DBAUD=$(BAUD) -mmcu=$(MCU)
INC				= -iquote $(incdir)
LDFLAGS			= -Wl,-Map,$(builddir)/$(TARGET).map -Wl,--gc-sections -mmcu=$(MCU)

#software
CC	 			:= avr-gcc
OBJCOPY 		:= avr-objcopy
OBJDUMP 		:= avr-objdump
AVRSIZE 		:= avr-size
AVRDUDE 		:= avrdude

#for future use...
prefix 			= /usr/local
bindir 			= $(prefix)/bin
libdir			= $(prefix)/lib
includedir		= $(prefix)/include

################################
# Project files
################################
builddir 		= ./bin
incdir			= ./inc
src_basedir		= ./src
srcdirs			= $(shell find $(src_basedir) -type d)
resdir			= ./res
3libdir			= ./lib
depdir			= ./dep
objdir			= ./obj

dirs		= $(builddir) $(incdir) $(src_basedir) $(resdir) $(3libdir) $(depdir) $(objdir) \
				$(shell find $(src_basedir) -type d -printf "%P\n" | sed 1d | sed -e 's|^|$(objdir)/|') \
				$(shell find $(src_basedir) -type d -printf "%P\n" | sed 1d | sed -e 's|^|$(depdir)/|')

#you can place sub-directories and files in your src directory. This handles them automatic
SRCS	:= $(patsubst $(src_basedir)/%,%,$(foreach dir, $(srcdirs),$(wildcard $(dir)/*.c)))

RESS	:= \

LIBS	:= \

################################
# Targets
################################

OBJS 			:= $(addprefix $(objdir)/,$(SRCS:.c=.o))
DEPENDENCY 		:= $(addprefix $(depdir)/,$(SRCS:.c=.dep))
BUILD			:= $(objdir)/.lastbuild

vpath %.h		$(incdir)
vpath %.c		$(srcdirs)
vpath %.dep		$(depdir)
vpath %.o 		$(objdir)

.PHONY: all build disassemble clean realclean rebuild installdirs debug fuses default_fuses show_fuses flash write_eeprom read_eeprom

################################
# Make
################################

all: build

build: $(BUILD) 
	@echo [PROJECT UP-TO-DATE]

$(BUILD): $(OBJS)
	@echo [LINK]
	$(CC) $(LDFLAGS) $^ -o $(builddir)/$(TARGET).elf
	$(OBJCOPY) -j .text -j .data -O ihex $(builddir)/$(TARGET).elf $(builddir)/$(TARGET).hex
	@touch $@

$(objdir)/%.o : %.c %.dep
	@echo [COMPILE]
	$(CC) -c $(CFLAGS) \
	-o $@ $<

# Dependency generation:
# dep/main.dep: src/main.c inc/header.h
$(depdir)/%.dep : %.c Makefile | $(dirs)
	@$(CC) -c $(CFLAGS) \
	-MM -MP -MT $@ $< \
	> $@

-include $(DEPENDENCY)

#disassemble options: avr-objdump --help 
disassemble: $(BUILD)
	$(OBJDUMP) -Dwx $(builddir)/$(TARGET).elf > $(builddir)/$(TARGET).lst

size: $(BUILD)
	$(AVRSIZE) -Ct --mcu=$(MCU) $(builddir)/$(TARGET).elf

clean:
	@echo [CLEAN]
ifdef builddir
	rm -rf $(builddir)/*
endif
ifdef objdir
	rm -rf $(objdir)/*
	rm -rf $(BUILD)
endif
ifdef depdir
	rm -rf $(depdir)/*
endif

rebuild: clean
	@echo [REBUILD]
	$(MAKE)

$(dirs):
	@echo [MKDIR dirs]
	mkdir -p $(dirs)

installdirs:
	@echo [INSTALLDIRS]
	mkdir -p $(dirs)

debug:
	@echo [DEBUG]
	@echo "TARGET:	"$(TARGET)
	@echo "TYPE:	"$(TYPE)
	@echo "VER:		"$(VER)
	@echo "dirs:	"$(dirs)
	@echo "SRCS:	"$(SRCS)
	@echo "OBJS:	"$(OBJS)
	@echo "MCU: 	"$(MCU)
	@echo "F_CPU: 	"$(F_CPU)
	@echo "BAUD:	"$(BAUD)

################################
# Fuses
################################
#default fuses
DEF-LFUSE = 0x62
DEF-HFUSE = 0xdf
DEF-EFUSE = 0xff

FUSE_STRING = -U lfuse:w:$(LFUSE):m -U hfuse:w:$(HFUSE):m -U efuse:w:$(EFUSE):m 

fuses: 
	$(AVRDUDE) -c $(PROGRAMMER_TYPE) -p $(MCU) $(PROGRAMMER_ARGS) $(FUSE_STRING)
	
default_fuses: FUSE_STRING = -U lfuse:w:$(DEF-LFUSE):m -U hfuse:w:$(DEF-HFUSE):m -U efuse:w:$(DEF-EFUSE):m 
default_fuses: fuses

show_fuses:
	$(AVRDUDE) -c $(PROGRAMMER_TYPE) -p $(MCU) $(PROGRAMMER_ARGS) -nv	

################################
# Flash
################################

flash: $(BUILD)
	@echo [FLASH]
	$(AVRDUDE) -c $(PROGRAMMER_TYPE) -p $(MCU) $(PROGRAMMER_ARGS) -U flash:w:$(builddir)/$(TARGET).hex
	$(MAKE) write_eeprom

%.eeprom: $(BUILD)
	@echo $(TARGET) > $@
	@echo $(TYPE) >> $@
	@echo $(VER) >> $@

write_eeprom: $(builddir)/$(TARGET).eeprom
	@echo [EEPROM]
	$(AVRDUDE) -c $(PROGRAMMER_TYPE) -p $(MCU) $(PROGRAMMER_ARGS) -U eeprom:w:$<:r

read_eeprom:
	$(AVRDUDE) -c $(PROGRAMMER_TYPE) -p $(MCU) $(PROGRAMMER_ARGS) -U eeprom:r:- | tr -dc '\0-\177'