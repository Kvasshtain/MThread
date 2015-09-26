#===========================================================================
# MAIN
#===========================================================================
NAMEPROJ   =test_stm32f051r8

TOOLCHAIN  =
PATH_PROJ  =../file/
PATH_INCLU =$(PATH_PROJ)

PATH_BIN   =$(PATH_PROJ)bin/
PATH_SRC   =$(PATH_PROJ)src/
PATH_INC   =$(PATH_PROJ)inc/


CC         =$(TOOLCHAIN)arm-none-eabi-gcc
AS         =$(TOOLCHAIN)arm-none-eabi-as
LD         =$(TOOLCHAIN)arm-none-eabi-ld
OBJDUMP    =$(TOOLCHAIN)arm-none-eabi-objdump
OBJCOPY    =$(TOOLCHAIN)arm-none-eabi-objcopy
SIZE       =$(TOOLCHAIN)arm-none-eabi-size


MAIN_I     =-I$(PATH_INCLU) $(MThread_I)
COMPILOP   =-g -O0 -nostdlib -ffreestanding -Wall -mthumb  -mcpu=cortex-m0 $(MAIN_I) -std=c99
ASMOP      =-g -Wall -mthumb  -mcpu=cortex-m0 $(MAIN_I)
LINKOP     =-T link.ld -Map=$(PATH_BIN)$(NAMEPROJ).map


#===========================================================================
# MThread
#===========================================================================
# MThread_Platform =
# ARM_CM0
# ARM_CM0_Plus
# ARM_CM3
# ARM_CM4
MThread_Platform=ARM_CM0

MThread_p_inc=../../../kernel/mthread_inc/
MThread_p_src=../../../kernel/mthread_src/
MThread_I= -I$(MThread_p_inc) \
           -I$(MThread_p_src) \
           -I$(PATH_INC)
		   
MThread_inc= \
	$(MThread_p_inc)mthread_task.h
	
MThread_opj= \
	mthread_port.o \
	mthread_task.o \
	mmutex.o
	

mthread_port.o: $(MThread_p_src)portable/$(MThread_Platform)/mthread_port.s $(MThread_inc)
	$(CC) $(COMPILOP) -c $(MThread_p_src)portable/$(MThread_Platform)/mthread_port.s -o mthread_port.o

mthread_task.o: $(MThread_p_src)mthread_task.c $(MThread_inc)
	$(CC) $(COMPILOP) -c $(MThread_p_src)mthread_task.c -o mthread_task.o
	
mmutex.o: $(MThread_p_src)mmutex.c $(MThread_inc)
	$(CC) $(COMPILOP) -c $(MThread_p_src)mmutex.c -o mmutex.o

#===========================================================================
# MAIN
#===========================================================================
AFINC= \
	$(PATH_INC)globalIncludeFile.h \
	$(PATH_INC)main.h \
	$(PATH_INC)startup_stm32f0xx.h \
	$(PATH_INC)phisic.h

AFOBJ= \
	startup.o \
	startup_stm32f0xx.o \
	main.o \
	phisic.o


.PHONY : all
all: $(AFOBJ) $(MThread_opj)
	@$(LD) -o $(PATH_BIN)$(NAMEPROJ).elf $(LINKOP) $(AFOBJ) $(MThread_opj) $(LIB_OP)
	@$(OBJDUMP) -D $(PATH_BIN)$(NAMEPROJ).elf > $(PATH_BIN)$(NAMEPROJ).asm
	@$(OBJCOPY) $(PATH_BIN)$(NAMEPROJ).elf $(PATH_BIN)$(NAMEPROJ).bin -O binary
	

startup.o: $(PATH_INCLU)startup.S $(AFINC)
	$(AS) $(ASMOP) -c $(PATH_INCLU)startup.S -o startup.o
	
startup_stm32f0xx.o: $(PATH_SRC)startup_stm32f0xx.c $(AFINC)
	$(CC) $(COMPILOP) -c $(PATH_SRC)startup_stm32f0xx.c -o startup_stm32f0xx.o
	
phisic.o: $(PATH_SRC)phisic.c $(AFINC)
	$(CC) $(COMPILOP) -c $(PATH_SRC)phisic.c -o phisic.o

main.o: $(PATH_SRC)main.c $(AFINC)
	$(CC) $(COMPILOP) -c $(PATH_SRC)main.c -o main.o
#===========================================================================
# All
#===========================================================================

	
#===========================================================================
.PHONY : clean
clean:
	-@rm *.o
	-@$(SIZE) $(PATH_BIN)$(NAMEPROJ).elf

