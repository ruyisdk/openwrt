# SPDX-License-Identifier: GPL-2.0-only
#
# Copyright (C) 2023 Estela ad Astra <i@estela.moe>
#

include $(TOPDIR)/rules.mk

ARCH:=riscv64
BOARD:=thead
BOARDNAME:=T-Head RISC-V boards
FEATURES:=ext4
KERNELNAME:=Image dtbs
SUBTARGETS:=licheepi4a ahead

KERNEL_PATCHVER:=5.10

include $(INCLUDE_DIR)/target.mk

define Target/Description
	Build firmware images for the T-Head RISC-V boards
endef

$(eval $(call BuildTarget))
