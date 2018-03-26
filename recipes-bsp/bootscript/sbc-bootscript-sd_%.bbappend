FILESEXTRAPATHS_prepend := "${THISDIR}/files:"

SRC_URI += "file://bootscript.source"

BOOTSCRIPT_secosbca62 = "${S}/bootscript.source"

do_mkimage () {
    uboot-mkimage  -A arm -O linux -T script -C none -a 0 -e 0 \
                   -n "bootscript" -d ${S}/bootscript.source ${S}/bootscript
}

do_deploy () {
    install -d ${DEPLOYDIR}
    rm -f ${DEPLOYDIR}/bootscript
    install bootscript ${DEPLOYDIR}/bootscript
}

ALLOW_EMPTY_${PN} = "1"