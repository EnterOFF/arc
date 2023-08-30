################################################################################
#
# r8169
#
################################################################################

R8169_VERSION = 6699b34dd60a34cde2ffc8587f6eb0587173dca7
R8169_SITE = $(call github,AuxXxilium,r8169,$(R8169_VERSION))
R8169_LICENSE = GPL-2.0

R8169_MODULE_MAKE_OPTS = \
    USER_EXTRA_CFLAGS="-DCONFIG_$(call qstrip,$(BR2_ENDIAN))_ENDIAN -Wno-error"

$(eval $(kernel-module))
$(eval $(generic-package))
