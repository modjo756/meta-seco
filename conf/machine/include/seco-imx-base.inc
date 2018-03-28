MACHINE_USES_VIVANTE_KERNEL_DRIVER_MODULE ?= "1"

# Das u-boot settings
UBOOT_MAKE_TARGET = ""
UBOOT_CONFIG ??= "sd"
UBOOT_CONFIG[sd] = "mx6q_SBC_A62_256MBx4_defconfig"

IMAGE_FSTYPES = "wic.bz2"

#add bootscript to boot partition
IMAGE_BOOT_FILES = " bootscript \
                     zImage \
                     imx6q-seco_SBC_A62.dtb \
"

# We use WIC for image creation
do_image_wic[depends] += "virtual/bootloader:do_populate_sysroot"
WKS_FILE = "seco-sdcard.wks" 

# There is no more boot partition so install the needed files to /boot
#MACHINE_ESSENTIAL_EXTRA_RDEPENDS += " kernel-devicetree sbc-bootscript-sd \
#"