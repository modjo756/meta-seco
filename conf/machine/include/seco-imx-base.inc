MACHINE_USES_VIVANTE_KERNEL_DRIVER_MODULE ?= "1"

# Das u-boot settings
UBOOT_MAKE_TARGET = ""
UBOOT_SUFFIX = "img"
UBOOT_CONFIG ??= "sd"
UBOOT_MACHINE = "mx6qdl_seco_config"
SPL_BINARY = "SPL"

# We use WIC for image creation
do_image_wic[depends] += "virtual/bootloader:do_populate_sysroot"
WKS_FILE = "seco-sdcard.wks" 
IMAGE_FSTYPES = "wic.bz2"
