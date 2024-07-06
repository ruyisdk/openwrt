# SPDX-License-Identifier: GPL-2.0-only
#
# Copyright (C) 2023 OpenWrt.org

include $(TOPDIR)/rules.mk

PKG_NAME:=th1520-boot-firmware
PKG_RELEASE:=1

PKG_SOURCE_PROTO:=git
PKG_SOURCE_URL:=https://github.com/revyos/th1520-boot-firmware.git
PKG_SOURCE_VERSION:=c5ab8185a292907cdea7b7197458c79e1863d826
PKG_MIRROR_HASH:=8e01d1a8f4c991c52d87c3484543caccb7deb4a7e269278cbd5f5be7ad67eac3

PKG_LICENSE_FILES:=LICENSE
PKG_MAINTAINER:=RevySR <rabenda.cn@gmail.com>

include $(INCLUDE_DIR)/package.mk

define Package/th1520-boot-firmware
  SECTION:=boot
  CATEGORY:=Boot Loaders
  DEPENDS:=@(TARGET_xuantie)
  TITLE:=Xuantie SoCs Boot Firmware
  AON:=addons/boot/light_aon_fpga.bin
  AUDIO:=addons/boot/light_c906_audio.bin
  STR:=addons/boot/str.bin
  SBI:=opensbi/fw_dynamic.bin.mainline
endef

define Build/Compile
endef

define Build/InstallDev
	$(INSTALL_DIR) $(STAGING_DIR_IMAGE)

	$(CP) $(PKG_BUILD_DIR)/$(AON) $(STAGING_DIR_IMAGE)/th1520-light_aon_fpga.bin
	$(CP) $(PKG_BUILD_DIR)/$(AUDIO) $(STAGING_DIR_IMAGE)/th1520-light_c906_audio.bin
	$(CP) $(PKG_BUILD_DIR)/$(STR) $(STAGING_DIR_IMAGE)/th1520-str.bin
	$(CP) $(PKG_BUILD_DIR)/$(SBI) $(STAGING_DIR_IMAGE)/th1520-fw_dynamic.bin
endef

$(eval $(call BuildPackage,th1520-boot-firmware))
