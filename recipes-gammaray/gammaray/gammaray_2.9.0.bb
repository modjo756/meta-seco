SUMMARY = "GammaRay Qt introspection probe"
HOMEPAGE = "http://www.kdab.com/gammaray"

LICENSE = "GPLv2"
LIC_FILES_CHKSUM = "file://LICENSE.GPL.txt;md5=560b8b2e529f7a17ee5dde6e5d0c0d69"

inherit cmake_qt5

SRC_URI = "git://github.com/KDAB/GammaRay;branch=master"

SRCREV = "409d2d1cd8f67b560a1ba470ffe3bf03a3ab6ca5"

RDEPENDS_${PN} = "libdw"

DEPENDS = " \
    qtbase \
    qtdeclarative \
    qtmultimedia \
    qtsvg \
    qtsensors \
    qtimageformats \
    qtsystems \
    qtscript \
    qt3d \
    qtcanvas3d \
    qtgraphicaleffects \
    qtwebengine \
    qtwebkit \
    qtconnectivity \
    qtlocation \
    qtquick1 \
    qtserialport \
    qtserialbus \
    qtcharts \
    qtquickcontrols \
    qtquickcontrols2 \
    qtvirtualkeyboard \
    qttools \
    qtxmlpatterns \
    "

S = "${WORKDIR}/git"

EXTRA_OECMAKE += " -DGAMMARAY_BUILD_UI=OFF"

FILES_${PN}-dev += " \
    /usr/lib/cmake/* \
    /usr/mkspecs/modules/* \
"
FILES_${PN}-dbg += " \
    /usr/lib/.debug/* \
    /usr/lib/gammaray/*/*/.debug \
    /usr/lib/gammaray/*/*/styles/.debug \
"
