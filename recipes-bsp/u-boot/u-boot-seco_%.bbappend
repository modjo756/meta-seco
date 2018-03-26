FILESEXTRAPATHS_prepend := "${THISDIR}/files:"

PROVIDES += "virtual/bootloader"
COMPATIBLE_MACHINE = "secosbca62"

# Add patch for gcc 7 and config for quad 

SRC_URI += "file://0003-kernel-add-support-for-gcc7.patch \
            "





