FILESEXTRAPATHS_prepend := "${THISDIR}/files:"

# Add Red Hat NTP servers to synchronize the UDOO local date
SRC_URI += " \
            file://ntp.conf \
            file://ntpdate \
"

do_install_append() {
    install -m 644 ${WORKDIR}/ntp.conf ${D}${sysconfdir}
    install -m 644 ${WORKDIR}/ntpdate ${D}${sysconfdir}/default/ntpdate
}

#remove ntpd daemon
pkg_postinst_ntpdate_append () {
    /etc/init.d/ntpd stop
    update-rc.d -f ntpd remove
    rm /etc/init.d/ntpd
}