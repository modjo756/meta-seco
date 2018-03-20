FILESEXTRAPATHS_prepend := "${THISDIR}/files:"

RDEPENDS_{PN} += "expect"

# Add custom smb.conf file to samba recipe
SRC_URI += "file://22-samba-conf.patch\
            file://23-create-sambaUser.sh \
            file://24-stop-service.patch \
            "

do_install_append() {
    install -m 0755 ${WORKDIR}/23-create-sambaUser.sh ${D}${sysconfdir}/samba/create-sambaUser.sh
}