
ifeq ($(KERNELRELEASE),)
KDIR ?= $(INSTALL_MOD_PATH)/lib/modules/$(shell uname -r)/build
ifneq ($(shell if [ -e $(KDIR)/include/config/auto.conf ]; then echo 1; fi),1)
  $(error ERROR: Kernel header files not found.  Install the appropriate \
    kernel development package necessary for building external kernel modules \
    or run 'make oldconfig && make modules_prepare' on kernel src to fix it)
endif
include $(KDIR)/include/config/auto.conf
INSTALL_FW_PATH ?= $(INSTALL_MOD_PATH)/lib/firmware



