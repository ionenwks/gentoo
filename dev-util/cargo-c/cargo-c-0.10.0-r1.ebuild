# Copyright 2022-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

# Auto-Generated by cargo-ebuild 0.5.4

EAPI=8

# Only bother defining this if the github tarball doesn't work!
# Otherwise just comment it out and things should Just Work (TM).
#MY_P="${P}+cargo-{CARGO_V}"

CRATES="
	adler@1.0.2
	ahash@0.8.11
	aho-corasick@1.1.3
	allocator-api2@0.2.18
	annotate-snippets@0.11.4
	anstream@0.6.14
	anstyle-parse@0.2.4
	anstyle-query@1.1.0
	anstyle-wincon@3.0.3
	anstyle@1.0.7
	anyhow@1.0.86
	arc-swap@1.7.1
	autocfg@1.3.0
	base16ct@0.2.0
	base64@0.22.1
	base64ct@1.6.0
	bitflags@1.3.2
	bitflags@2.5.0
	bitmaps@2.1.0
	block-buffer@0.10.4
	bstr@1.9.1
	bumpalo@3.16.0
	bytes@1.6.0
	bytesize@1.3.0
	cargo-credential-libsecret@0.4.5
	cargo-credential-macos-keychain@0.4.5
	cargo-credential-wincred@0.4.5
	cargo-credential@0.4.5
	cargo-platform@0.1.8
	cargo-util-schemas@0.3.1
	cargo-util@0.2.12
	cargo@0.80.0
	cbindgen@0.26.0
	cc@1.0.99
	cfg-if@1.0.0
	clap@4.5.7
	clap_builder@4.5.7
	clap_derive@4.5.5
	clap_lex@0.7.1
	clru@0.6.2
	color-print-proc-macro@0.3.6
	color-print@0.3.6
	colorchoice@1.0.1
	const-oid@0.9.6
	core-foundation-sys@0.8.6
	core-foundation@0.9.4
	cpufeatures@0.2.12
	crates-io@0.40.2
	crc32fast@1.4.2
	crossbeam-channel@0.5.13
	crossbeam-deque@0.8.5
	crossbeam-epoch@0.9.18
	crossbeam-utils@0.8.20
	crypto-bigint@0.5.5
	crypto-common@0.1.6
	ct-codecs@1.1.1
	curl-sys@0.4.72+curl-8.6.0
	curl@0.4.46
	dbus@0.9.7
	der@0.7.9
	deranged@0.3.11
	digest@0.10.7
	dunce@1.0.4
	ecdsa@0.16.9
	ed25519-compact@2.1.1
	either@1.12.0
	elliptic-curve@0.13.8
	encoding_rs@0.8.34
	equivalent@1.0.1
	erased-serde@0.4.5
	errno@0.3.9
	fallible-iterator@0.3.0
	fallible-streaming-iterator@0.1.9
	faster-hex@0.9.0
	fastrand@2.1.0
	ff@0.13.0
	fiat-crypto@0.2.9
	filetime@0.2.23
	flate2@1.0.30
	fnv@1.0.7
	foreign-types-shared@0.1.1
	foreign-types@0.3.2
	form_urlencoded@1.2.1
	generic-array@0.14.7
	getrandom@0.2.15
	git2-curl@0.19.0
	git2@0.18.3
	gix-actor@0.31.2
	gix-attributes@0.22.2
	gix-bitmap@0.2.11
	gix-chunk@0.4.8
	gix-command@0.3.7
	gix-commitgraph@0.24.2
	gix-config-value@0.14.6
	gix-config@0.37.0
	gix-credentials@0.24.2
	gix-date@0.8.6
	gix-diff@0.44.0
	gix-dir@0.5.0
	gix-discover@0.32.0
	gix-features@0.38.2
	gix-filter@0.11.2
	gix-fs@0.11.1
	gix-glob@0.16.3
	gix-hash@0.14.2
	gix-hashtable@0.5.2
	gix-ignore@0.11.2
	gix-index@0.33.0
	gix-lock@14.0.0
	gix-macros@0.1.5
	gix-negotiate@0.13.1
	gix-object@0.42.2
	gix-odb@0.61.0
	gix-pack@0.51.0
	gix-packetline-blocking@0.17.4
	gix-packetline@0.17.5
	gix-path@0.10.7
	gix-pathspec@0.7.5
	gix-prompt@0.8.5
	gix-protocol@0.45.1
	gix-quote@0.4.12
	gix-ref@0.44.1
	gix-refspec@0.23.0
	gix-revision@0.27.1
	gix-revwalk@0.13.1
	gix-sec@0.10.6
	gix-submodule@0.11.0
	gix-tempfile@14.0.0
	gix-trace@0.1.9
	gix-transport@0.42.1
	gix-traverse@0.39.1
	gix-url@0.27.3
	gix-utils@0.1.12
	gix-validate@0.8.5
	gix-worktree@0.34.0
	gix@0.63.0
	glob@0.3.1
	globset@0.4.14
	group@0.13.0
	hashbrown@0.12.3
	hashbrown@0.14.5
	hashlink@0.9.1
	heck@0.4.1
	heck@0.5.0
	hex@0.4.3
	hkdf@0.12.4
	hmac@0.12.1
	home@0.5.9
	http-auth@0.1.9
	humantime@2.1.0
	idna@0.5.0
	ignore@0.4.22
	im-rc@15.1.0
	indexmap@1.9.3
	indexmap@2.2.6
	is_terminal_polyfill@1.70.0
	itertools@0.12.1
	itertools@0.13.0
	itoa@1.0.11
	jobserver@0.1.31
	js-sys@0.3.69
	kstring@2.0.0
	lazy_static@1.4.0
	lazycell@1.3.0
	libc@0.2.155
	libdbus-sys@0.2.5
	libgit2-sys@0.16.2+1.7.2
	libloading@0.8.3
	libnghttp2-sys@0.1.10+1.61.0
	libsqlite3-sys@0.28.0
	libssh2-sys@0.3.0
	libz-sys@1.1.18
	linux-raw-sys@0.4.14
	lock_api@0.4.12
	log@0.4.21
	matchers@0.1.0
	maybe-async@0.2.10
	memchr@2.7.4
	memmap2@0.9.4
	minimal-lexical@0.2.1
	miniz_oxide@0.7.4
	miow@0.6.0
	nom@7.1.3
	normpath@1.2.0
	nu-ansi-term@0.46.0
	num-conv@0.1.0
	num-traits@0.2.19
	num_threads@0.1.7
	once_cell@1.19.0
	opener@0.7.1
	openssl-macros@0.1.1
	openssl-probe@0.1.5
	openssl-src@300.3.1+3.3.1
	openssl-sys@0.9.102
	openssl@0.10.64
	ordered-float@2.10.1
	orion@0.17.6
	os_info@3.8.2
	overload@0.1.1
	p384@0.13.0
	parking_lot@0.12.3
	parking_lot_core@0.9.10
	pasetors@0.6.8
	pathdiff@0.2.1
	pem-rfc7468@0.7.0
	percent-encoding@2.3.1
	pin-project-lite@0.2.14
	pkcs8@0.10.2
	pkg-config@0.3.30
	powerfmt@0.2.0
	ppv-lite86@0.2.17
	primeorder@0.13.6
	proc-macro2@1.0.86
	prodash@28.0.0
	quote@1.0.36
	rand@0.8.5
	rand_chacha@0.3.1
	rand_core@0.6.4
	rand_xoshiro@0.6.0
	redox_syscall@0.4.1
	redox_syscall@0.5.2
	regex-automata@0.1.10
	regex-automata@0.4.7
	regex-syntax@0.6.29
	regex-syntax@0.8.4
	regex@1.10.5
	rfc6979@0.4.0
	rusqlite@0.31.0
	rustfix@0.8.4
	rustix@0.38.34
	ryu@1.0.18
	same-file@1.0.6
	schannel@0.1.23
	scopeguard@1.2.0
	sec1@0.7.3
	security-framework-sys@2.11.0
	security-framework@2.11.0
	semver@1.0.23
	serde-untagged@0.1.6
	serde-value@0.7.0
	serde@1.0.203
	serde_derive@1.0.203
	serde_ignored@0.1.10
	serde_json@1.0.117
	serde_spanned@0.6.6
	sha1@0.10.6
	sha1_smol@1.0.0
	sha2@0.10.8
	sharded-slab@0.1.7
	shell-escape@0.1.5
	shell-words@1.1.0
	signature@2.2.0
	sized-chunks@0.6.5
	smallvec@1.13.2
	socket2@0.5.7
	spki@0.7.3
	static_assertions@1.1.0
	strsim@0.11.1
	subtle@2.6.0
	supports-hyperlinks@3.0.0
	supports-unicode@3.0.0
	syn@1.0.109
	syn@2.0.67
	tar@0.4.41
	tempfile@3.10.1
	terminal_size@0.3.0
	thiserror-impl@1.0.61
	thiserror@1.0.61
	thread_local@1.1.8
	time-core@0.1.2
	time-macros@0.2.18
	time@0.3.36
	tinyvec@1.6.0
	tinyvec_macros@0.1.1
	toml@0.5.11
	toml@0.8.14
	toml_datetime@0.6.6
	toml_edit@0.22.14
	tracing-attributes@0.1.27
	tracing-chrome@0.7.2
	tracing-core@0.1.32
	tracing-log@0.2.0
	tracing-subscriber@0.3.18
	tracing@0.1.40
	typeid@1.0.0
	typenum@1.17.0
	unicase@2.7.0
	unicode-bidi@0.3.15
	unicode-bom@2.0.3
	unicode-ident@1.0.12
	unicode-normalization@0.1.23
	unicode-width@0.1.13
	unicode-xid@0.2.4
	url@2.5.2
	utf8parse@0.2.2
	valuable@0.1.0
	vcpkg@0.2.15
	version_check@0.9.4
	walkdir@2.5.0
	wasi@0.11.0+wasi-snapshot-preview1
	wasm-bindgen-backend@0.2.92
	wasm-bindgen-macro-support@0.2.92
	wasm-bindgen-macro@0.2.92
	wasm-bindgen-shared@0.2.92
	wasm-bindgen@0.2.92
	winapi-i686-pc-windows-gnu@0.4.0
	winapi-util@0.1.8
	winapi-x86_64-pc-windows-gnu@0.4.0
	winapi@0.3.9
	windows-sys@0.48.0
	windows-sys@0.52.0
	windows-targets@0.48.5
	windows-targets@0.52.5
	windows_aarch64_gnullvm@0.48.5
	windows_aarch64_gnullvm@0.52.5
	windows_aarch64_msvc@0.48.5
	windows_aarch64_msvc@0.52.5
	windows_i686_gnu@0.48.5
	windows_i686_gnu@0.52.5
	windows_i686_gnullvm@0.52.5
	windows_i686_msvc@0.48.5
	windows_i686_msvc@0.52.5
	windows_x86_64_gnu@0.48.5
	windows_x86_64_gnu@0.52.5
	windows_x86_64_gnullvm@0.48.5
	windows_x86_64_gnullvm@0.52.5
	windows_x86_64_msvc@0.48.5
	windows_x86_64_msvc@0.52.5
	winnow@0.6.13
	zerocopy-derive@0.7.34
	zerocopy@0.7.34
	zeroize@1.8.1
"

RUST_MIN_VER="1.79.0"

inherit cargo

DESCRIPTION="Helper program to build and install c-like libraries"
HOMEPAGE="https://github.com/lu-zero/cargo-c"
if [[ -z ${MY_P} ]] ; then
	SRC_URI="https://github.com/lu-zero/cargo-c/archive/refs/tags/v${PV}.tar.gz -> ${P}.tar.gz"
else
	S="${WORKDIR}/${MY_P}"
fi

SRC_URI+=" ${CARGO_CRATE_URIS}"

LICENSE="MIT"
# Dependent crate licenses
LICENSE+=" Apache-2.0 BSD ISC MIT MPL-2.0 MPL-2.0 Unicode-DFS-2016"
SLOT="0"
KEYWORDS="~amd64 ~arm ~arm64 ~loong ~ppc ppc64 ~riscv ~s390 sparc x86"

RDEPEND=">=dev-libs/libgit2-1.7:=
	dev-libs/openssl:=
	net-libs/libssh2:=
	net-misc/curl[ssl]
	sys-libs/zlib"
DEPEND="${RDEPEND}"

QA_FLAGS_IGNORED="usr/bin/cargo-capi usr/bin/cargo-cbuild usr/bin/cargo-ctest usr/bin/cargo-cinstall"

src_unpack() {
	cargo_src_unpack

	if [[ -n ${MY_P} ]] ; then
		tar -xf "${DISTDIR}"/"${MY_P}.crate" -C "${WORKDIR}" || die
	fi

	# libgit2-sys unnecessarily(?) requests <libgit2-1.8.0, bump to 2 for now
	sed -e '/range_version/s/1\.8\.0/2/' \
		-i "${ECARGO_VENDOR}"/libgit2-sys-0.16.2+1.7.2/build.rs || die
}

src_configure() {
	# Some crates will auto-build and statically link C libraries(!)
	# Tracker bug #709568
	export LIBSSH2_SYS_USE_PKG_CONFIG=1
	export LIBGIT2_NO_VENDOR=1
	export PKG_CONFIG_ALLOW_CROSS=1
}
