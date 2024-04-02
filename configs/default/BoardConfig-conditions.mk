# condition config

# arch

# kernel
ifeq ($(filter-out %5.4,$(LICHEE_KERN_VER)),)
	ifeq ($(LICHEE_PLATFORM),linux)
		LICHEE_KERN_DEFCONF:=sun55iw3p1smp_defconfig
	endif
else ifeq ($(filter-out %5.10,$(LICHEE_KERN_VER)),)
	LICHEE_USE_INDEPENDENT_BSP := true
	ifeq ($(LICHEE_PLATFORM),linux)
		LICHEE_KERN_DEFCONF:=bsp_defconfig
	endif
else ifeq ($(filter-out %5.15,$(LICHEE_KERN_VER)),)
	LICHEE_USE_INDEPENDENT_BSP := true
	ifeq ($(LICHEE_PLATFORM),linux)
		LICHEE_KERN_DEFCONF:=bsp_defconfig
		ifeq ($(LICHEE_BOARD),ft)
			LICHEE_KERN_DEFCONF:=bsp_ft_defconfig
		endif
		ifeq ($(LICHEE_LINUX_DEV),dragonboard)
			LICHEE_KERN_DEFCONF:=bsp_dragonboard_defconfig
		endif
	endif
else ifeq ($(filter-out %6.1,$(LICHEE_KERN_VER)),)
	LICHEE_USE_INDEPENDENT_BSP := true
	ifeq ($(LICHEE_PLATFORM),linux)
		LICHEE_KERN_DEFCONF:=bsp_defconfig
	endif
endif

# platform
ifeq ($(LICHEE_PLATFORM),android)
	LICHEE_PACK_HOOK := build/hook/pack/hook.sh
	ifeq ($(LICHEE_KERN_DEFCONF),)
		LICHEE_KERN_DEFCONF := android13_arm64_defconfig
	endif
	ifeq ($(ANDROID_CLANG_PATH),)
		ANDROID_CLANG_PATH  := prebuilts/clang/host/linux-x86/clang-r450784d/bin
	endif
endif
