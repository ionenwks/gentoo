# Copyright 1999-2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit multilib-build

DESCRIPTION="Virtual for the GNU conversion library"

SLOT="0"
KEYWORDS="~alpha amd64 arm arm64 hppa ~loong ~m68k ~mips ppc ppc64 ~riscv ~s390 sparc x86 ~amd64-linux ~x86-linux ~arm64-macos ~ppc-macos ~x64-macos ~x64-solaris"

# - Don't put elibc_glibc? ( sys-libs/glibc ) to avoid circular deps between
# that and gcc
RDEPEND="!elibc_glibc? ( !elibc_musl? ( >=dev-libs/libiconv-1.14-r1[${MULTILIB_USEDEP}] ) )"
