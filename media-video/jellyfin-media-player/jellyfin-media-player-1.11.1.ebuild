# Copyright 1999-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
inherit cmake python-any-r1

DESCRIPTION="Jellyfin Desktop Client based on Plex Media Player"
HOMEPAGE="https://github.com/jellyfin/jellyfin-media-player"

SRC_URI="
	https://github.com/jellyfin/${PN}/archive/refs/tags/v${PV}.tar.gz -> ${P}.tar.gz
"

LICENSE="GPL-2"
SLOT="0"

KEYWORDS="~amd64"
IUSE="+dbus"

DEPEND="
	dev-libs/libcec
	dev-qt/qtcore:5
	dev-qt/qtdeclarative:5
	dev-qt/qtgui:5
	dev-qt/qtnetwork:5
	dev-qt/qtquickcontrols:5
	dev-qt/qtwebchannel:5
	dev-qt/qtwebengine:5
	dev-qt/qtwidgets:5
	dev-qt/qtwidgets:5
	dev-qt/qtx11extras:5
	dev-qt/qtxml:5
	media-libs/libsdl2
	media-video/mpv:=[libmpv]
	sys-libs/zlib
	virtual/opengl
	x11-libs/libX11
	x11-libs/libXrandr
	dbus? ( dev-qt/qtdbus:5 )
"

BDEPEND="
	${PYTHON_DEPS}
	virtual/pkgconfig
"

# x11-misc/xdg-utils is used for xdg-screensaver, which is used to inhibit
# screen locking

RDEPEND="
	${DEPEND}
	!dbus? ( x11-misc/xdg-utils )
"

src_configure() {
	local mycmakeargs=(
		-DOpenGL_GL_PREFERENCE=GLVND
		# PMP, at least prior to the fork into JMP, used to download codecs,
		# for safe measure, disable that.
		-DENABLE_CODECS=OFF
		# LINUX_X11POWER instructs JMP to use xdg-screensaver instead of dbus
		# for inhibiting screen saving.
		-DLINUX_X11POWER="$(usex dbus OFF ON)"
	)
	cmake_src_configure
}
