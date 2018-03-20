# Copyright (C) 2012-2015 O.S. Systems Software LTDA.
# Released under the MIT license (see COPYING.MIT for the terms)

SUMMARY = "Seco kernel based on the FSL BSP Linux"
DESCRIPTION = "Seco kernel provided support for all Released Secoboards."

require recipes-kernel/linux/linux-imx.inc
require recipes-kernel/linux/linux-dtb.inc

PV = "4.1.15"

LICENSE = "GPLv2+"
LIC_FILES_CHKSUM = "file://COPYING;md5=d7810fab7487fb0aad327b76f1be7cd7"

SCMVERSION = "n"
SRC_URI = "git://secogit.seco.com/imx6_release/linux-4-1-15-secoboards-imx6sx-rel.git;user=betauser:betauser;protocol=https \
           file://defconfig \
           file://0001-kernel-add-support-for-gcc7.patch \
           file://0003-sysa62-10.patch \
           file://0004-ov5640_mipi.patch \
           "
#file://0002-add-goodix928.patch
SRCREV = "${AUTOREV}"
SRC_URI[md5sum] = "a9636727df6a27466414ee0e14bf0c74"
SRC_URI[sha256sum] = "e753af1460392a6675a037057622929ed76f3c05f8421cdce2f842feedf795c5"

# This hack is needed because of the
# backports subdir in the kernel source
B = "${S}"