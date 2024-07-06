# SPDX-License-Identifier: GPL-2.0-only
#
# Copyright (C) 2023 Estela ad Astra <i@estela.moe>
#

include $(TOPDIR)/rules.mk

ARCH:=riscv64
BOARD:=xuantie
BOARDNAME:=XuanTie RISC-V boards
FEATURES:=ext4
KERNELNAME:=Image dtbs
SUBTARGETS:=th1520

KERNEL_PATCHVER:=6.6

include $(INCLUDE_DIR)/target.mk

define Target/Description
	Build firmware images for the XuanTie RISC-V boards
endef

$(eval $(call BuildTarget))
