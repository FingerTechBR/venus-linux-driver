TARGET = VenusDrv
OBJS = VenusDrv-driver.o
MDIR = drivers/usb/misc

EXTRA_CFLAGS = -DEXPORT_SYMTAB
CURRENT = $(shell uname -r)
KDIR = /lib/modules/$(CURRENT)/build
PWD = $(shell pwd)
DEST = /lib/modules/$(CURRENT)/kernel/$(MDIR)

obj-m := $(TARGET).o

default:
	make -C $(KDIR) M=$(PWD) modules

ifeq ($(shell [ $(shell uname -r | cut -d. -f1) -eq 6 ] && [ $(shell uname -r | cut -d. -f2) -lt 6 ] && echo yes),yes)
$(TARGET).o: $(OBJS)
	$(LD) $(LD_RFLAG) -r -o $@ $(OBJS)
endif

install:
	su -c "cp -v $(TARGET).ko $(DEST) && /sbin/depmod -a"
	su -c "cp -v VenusDrv.h /usr/include/linux/"

clean:
	-rm -rf .tmp_versions modules.order Module* *.o *.ko .*.cmd .*.flags *.mod.c .tmp*

-include $(KDIR)/Rules.make