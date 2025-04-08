# condition config

# arch

# kernel
ifeq ($(filter-out %5.15,$(LICHEE_KERN_VER)),)
	ifeq ($(LICHEE_PLATFORM),linux)
		LICHEE_KERN_DEFCONF:=bsp_defconfig
		ifeq ($(LICHEE_LINUX_DEV),dragonboard)
			LICHEE_KERN_DEFCONF:=dragonboard_defconfig
		endif
		ifeq ($(LICHEE_LINUX_DEV),dragonabts)
			LICHEE_KERN_DEFCONF:=dragonabts_defconfig
		endif
	else ifeq ($(LICHEE_PLATFORM),android)
		LICHEE_KERN_DEFCONF := android13_arm64_defconfig
	endif
else ifeq ($(filter-out %6.1,$(LICHEE_KERN_VER)),)
	ifeq ($(LICHEE_PLATFORM),linux)
		LICHEE_KERN_DEFCONF:=bsp_defconfig
		ifeq ($(LICHEE_LINUX_DEV),dragonboard)
			LICHEE_KERN_DEFCONF:=dragonboard_defconfig
		endif
		ifeq ($(LICHEE_LINUX_DEV),dragonabts)
			LICHEE_KERN_DEFCONF:=dragonabts_defconfig
		endif
	endif
else ifeq ($(filter-out %6.6,$(LICHEE_KERN_VER)),)
	ifeq ($(LICHEE_PLATFORM),linux)
		LICHEE_KERN_DEFCONF:=bsp_defconfig
		ifeq ($(LICHEE_LINUX_DEV),dragonboard)
			LICHEE_KERN_DEFCONF:=dragonboard_defconfig
		endif
		ifeq ($(LICHEE_LINUX_DEV),dragonabts)
			LICHEE_KERN_DEFCONF:=dragonabts_defconfig
		endif
	else ifeq ($(LICHEE_PLATFORM),android)
		LICHEE_KERN_DEFCONF := android15_arm64_defconfig
	endif
endif

# platform
ifeq ($(LICHEE_PLATFORM),android)
	ifeq ($(ANDROID_CLANG_PATH),)
		ifeq ($(filter-out %5.15,$(LICHEE_KERN_VER)),)
			ANDROID_CLANG_PATH  := prebuilts/clang/host/linux-x86/clang-r450784d/bin
		else ifeq ($(filter-out %6.6,$(LICHEE_KERN_VER)),)
			ANDROID_CLANG_PATH  := prebuilts/clang/host/linux-x86/clang-r510928/bin
		endif
	endif
	LICHEE_PACK_HOOK := build/hook/pack/hook.sh
endif
