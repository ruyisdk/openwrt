# SPDX-License-Identifier: GPL-2.0-only

include $(TOPDIR)/rules.mk
include $(INCLUDE_DIR)/image.mk

define Image/BuildKernel
	rm -fR $@.boot
	mkdir -p $@.boot

	$(foreach dts,$(DTSNAMES), mkdir -p $@.boot/$(DTSDIR); $(CP) $(DTS_DIR)/$(DTSDIR)/$(dts).dtb $@.boot/$(DTSDIR)/$(dts).dtb;)

	$(CP) $(KDIR)/Image $@.boot/kernel.img

	mkdir -p $@.boot/extlinux
	$(CP) extlinux.conf $@.boot/extlinux/extlinux.conf
	
	$(CP) $(STAGING_DIR_IMAGE)/th1520-fw_dynamic.bin $@.boot/fw_dynamic.bin
	$(CP) $(STAGING_DIR_IMAGE)/th1520-light_aon_fpga.bin $@.boot/light_aon_fpga.bin
	$(CP) $(STAGING_DIR_IMAGE)/th1520-light_c906_audio.bin $@.boot/light_c906_audio.bin
	$(CP) $(STAGING_DIR_IMAGE)/th1520-str.bin $@.boot/str.bin

	rm -f $(KDIR)/boot.ext4
	mkfs.ext4 -d $@.boot -L "boot" $(KDIR)/boot.ext4 "57M"
endef

define Image/Build/Initramfs
	$(CP) $(KDIR)/Image-initramfs $(BIN_DIR)/$(IMG_PREFIX)-Image-initramfs
endef

define Image/Build/gzip
	gzip -f9n $(BIN_DIR)/$(IMG_ROOTFS)-$(1).img
endef

$(eval $(call Image/gzip-ext4-padded-squashfs))

define Image/Build
	$(call Image/Build/$(1))
	$(CP) $(KDIR)/root.$(1) $(BIN_DIR)/$(IMG_ROOTFS)-$(1).img
	$(CP) $(KDIR)/boot.ext4 $(BIN_DIR)/$(IMG_PREFIX)-boot-$(1).img
	$(call Image/Build/gzip/$(1))
endef

$(eval $(call BuildImage))
