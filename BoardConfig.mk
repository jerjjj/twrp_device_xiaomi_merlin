 ​# 
 ​#​ Copyright (C) 2021 The Android Open Source Project 
 ​#​ Copyright (C) 2021 SebaUbuntu's TWRP device tree generator 
 ​# 
 ​#​ SPDX-License-Identifier: Apache-2.0 
 ​# 
  
 ​DEVICE_PATH​ := device/xiaomi/merlin 
  
 ​#​ For building with minimal manifest 
 ​ALLOW_MISSING_DEPENDENCIES​ := true 
  
 ​#​ Architecture 
 ​TARGET_ARCH​ := arm64 
 ​TARGET_ARCH_VARIANT​ := armv8-a 
 ​TARGET_CPU_ABI​ := arm64-v8a 
 ​TARGET_CPU_ABI2​ := 
 ​TARGET_CPU_VARIANT​ := generic 
  
 ​TARGET_2ND_ARCH​ := arm 
 ​TARGET_2ND_ARCH_VARIANT​ := armv7-a-neon 
 ​TARGET_2ND_CPU_ABI​ := armeabi-v7a 
 ​TARGET_2ND_CPU_ABI2​ := armeabi 
 ​TARGET_2ND_CPU_VARIANT​ := generic 
 ​TARGET_BOARD_SUFFIX​ := _64 
 ​TARGET_USES_64_BIT_BINDER​ := true 
  
 ​#​ Assert 
 ​TARGET_OTA_ASSERT_DEVICE​ := merlin 
  
 ​#​ File systems 
BOARD_KERNEL_CMDLINE := bootopt=64S3,32N2,64N2 androidboot.selinux=permissive androidboot.usbconfigfs=true
TARGET_PREBUILT_KERNEL := $(DEVICE_PATH)/prebuilt/image.img
TARGET_PREBUILT_DTB := $(DEVICE_PATH)/prebuilt/dtb.img
TARGET_PREBUILT_DTBOIMAGE := $(DEVICE_PATH)/prebuilt/dtbo.img
BOARD_INCLUDE_RECOVERY_DTBO := true
BOARD_BOOTIMG_HEADER_VERSION := 2
BOARD_KERNEL_BASE := 0x40080000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_RAMDISK_OFFSET := 0x47C80000
BOARD_KERNEL_TAGS_OFFSET := 4BC80000
BOARD_MKBOOTIMG_ARGS += --ramdisk_offset $(BOARD_RAMDISK_OFFSET)
BOARD_MKBOOTIMG_ARGS += --tags_offset $(BOARD_KERNEL_TAGS_OFFSET)
BOARD_MKBOOTIMG_ARGS += --dtb $(TARGET_PREBUILT_DTB)
BOARD_MKBOOTIMG_ARGS += --header_version $(BOARD_BOOTIMG_HEADER_VERSION)
BOARD_KERNEL_IMAGE_NAME := Image.gz
TARGET_KERNEL_ARCH := arm64
TARGET_KERNEL_SOURCE := kernel/xiaomi/merlin
TARGET_KERNEL_CONFIG := merlin_defconfig

# Platform
TARGET_BOARD_PLATFORM := mt6768

# Hack: prevent anti rollback
PLATFORM_SECURITY_PATCH := 2099-12-31
VENDOR_SECURITY_PATCH := 2099-12-31
PLATFORM_VERSION := 16.1.0

# TWRP Configuration
TW_THEME := portrait_hdpi
TW_EXTRA_LANGUAGES := true
TW_SCREEN_BLANK_ON_BOOT := true
TW_INPUT_BLACKLIST := "hbtp_vm"
TW_USE_TOOLBOX := true

# System as root
BOARD_BUILD_SYSTEM_ROOT_IMAGE := false
BOARD_SUPPRESS_SECURE_ERASE​ := true

#​ AVB 
BOARD_AVB_ENABLE​ := true 
BOARD_AVB_RECOVERY_ALGORITHM​ :=SHA256_RSA4096 
BOARD_AVB_RECOVERY_KEY_PATH​ :=external/avb/test/data/testkey_rsa4096.pem 
​BOARD_AVB_RECOVERY_ROLLBACK_INDEX​ := 1 
BOARD_AVB_RECOVERY_ROLLBACK_INDEX_LOCATION​ := 1
 
#​ Recovery 
​TARGET_RECOVERY_FSTAB​ := ​$(​DEVICE_PATH​)​/recovery/root/system/etc/recovery.fstab 
LZMA_RAMDISK_TARGETS​ := recovery 
​LZMA_COMPRESSION​ := -9

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := merlin
TARGET_NO_BOOTLOADER := true
