LICHEE_CHIP:=sun55iw3p1
LICHEE_ARCH:=arm64
LICHEE_BRANDY_VER:=2.0
LICHEE_BRANDY_DEFCONF:=sun55iw3p1_defconfig
LICHEE_ROOTFS=must-do-by-yourself-in-dir-device-config-rootfs_tar

ifeq ($(BSP_BUILD_WITH_CLANG),true)
	ANDROID_CLANG_PATH  := prebuilts/clang/host/linux-x86/clang-r450784d/bin
endif
