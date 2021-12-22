################################################################################
#
# vesc-tool
#
################################################################################

VESC_TOOL_VERSION = ead7848c47ec9305fadedd0fc9f9ad1c2db5db54
VESC_TOOL_SITE = $(call github,vedderb,vesc_tool,$(VESC_TOOL_VERSION))
VESC_TOOL_LICENSE = GPLv3
VESC_TOOL_LICENSE_FILES = LICENSE

VESC_TOOL_CONF_OPTS += -config release "CONFIG += release_lin build_original"

define VESC_TOOL_INSTALL_TARGET_CMDS
	$(INSTALL) -D -m 0755 $(@D)/build/lin/vesc_tool_* $(TARGET_DIR)/usr/bin/vesc_tool
endef

$(eval $(qmake-package))
