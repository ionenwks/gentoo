# Copyright 1999-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

DESCRIPTION="3D motor sports simulator"
HOMEPAGE="https://gracer.sourceforge.net/"
SRC_URI="https://downloads.sourceforge.net/gracer/${P}.tar.gz"

LICENSE="GPL-2+"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="joystick"

DEPEND="
	dev-lang/tcl:0=
	media-libs/freeglut
	media-libs/giflib:=
	media-libs/libpng:0=
	media-libs/plib
	virtual/glu
	virtual/jpeg:0
	virtual/opengl
	x11-libs/libXi
	x11-libs/libXmu
"

RDEPEND="${DEPEND}"

PATCHES=(
		"${FILESDIR}"/${PV}-gldefs.patch
		"${FILESDIR}"/${PN}-gcc-3.4.patch
		"${FILESDIR}/${P}"-gcc41.patch
		"${FILESDIR}"/${P}-as-needed.patch
		"${FILESDIR}"/${P}-libpng14.patch
		"${FILESDIR}"/${P}-png15.patch
		"${FILESDIR}"/${P}-giflib.patch
		"${FILESDIR}"/${P}-warnings.patch
		"${FILESDIR}"/${P}-gcc10.patch
)

src_configure() {
	econf \
		--enable-gif \
		--enable-jpeg \
		--enable-png \
		$(use_enable joystick)
	sed -i \
		-e 's:-lplibsl:-lplibsl -lplibul:' \
		$(find -name Makefile) || die
}
