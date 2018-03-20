FILESEXTRAPATHS_prepend := "${THISDIR}/files:"

# Add custom vsftpd conf file to vsftpd recipe
SRC_URI += "file://vsftpd.conf \
            file://vsftpd.user_list \
            "