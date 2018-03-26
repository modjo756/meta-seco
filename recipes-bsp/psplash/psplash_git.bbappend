FILESEXTRAPATHS_prepend := "${THISDIR}/files:"

# NB: this is only for the main logo image; if you add multiple images here,
# poky will build multiple psplash packages with 'outsuffix' in name for
# each of these ...
SPLASH_IMAGES = "file://yocto-project.png;outsuffix=default"

SRC_URI_append = " \
file://001-add-text-boot.patch \
"
