FILESEXTRAPATHS_prepend := "${THISDIR}/files:"

# Add custom conf to connman
SRC_URI += "file://main.conf"
            
do_install_append () {
	     install -d -m 755 ${D}/${sysconfdir}/connman/
	     install -p -m 644 ${WORKDIR}/main.conf ${D}/${sysconfdir}/connman/main.conf
}

FILES_${PN} += "/{sysconfdir}/connman/*"