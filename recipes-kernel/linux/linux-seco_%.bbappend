FILESEXTRAPATHS_prepend := "${THISDIR}/files:"

SRC_URI = "\
           git://secogit.seco.com/imx6_release/linux-4-1-15-secoboards-imx6-rel.git;user=betauser:betauser;protocol=https \
           file://defconfig \
           file://defconfig_original \
           file://0001-kernel-add-support-for-gcc7.patch \
           file://0002-add-goodix928.patch \
           file://0003-sysa62-10.patch \
           "