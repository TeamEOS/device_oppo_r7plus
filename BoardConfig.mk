#
# Copyright (C) 2015 TeamEOS
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

LOCAL_PATH := device/oppo/r7plus

TARGET_NO_BOOTLOADER := true
TARGET_BOOTLOADER_BOARD_NAME := r7plus

# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := generic

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv7-a-neon
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := cortex-a53

TARGET_USES_64_BIT_BINDER := true

# Kernel
BOARD_CUSTOM_BOOTIMG_MK := $(LOCAL_PATH)/mkbootimg.mk
BOARD_KERNEL_CMDLINE := console=ttyHSL0,115200,n8 androidboot.console=ttyHSL0 androidboot.hardware=qcom androidboot.selinux=permissive msm_rtb.filter=0x237 ehci-hcd.park=3 androidboot.bootdevice=7824900.sdhci lpm_levels.sleep_disabled=1 earlyprintk ramoops.mem_address=0x9ff00000 ramoops.mem_size=0x400000
BOARD_KERNEL_BASE := 0x80000000
BOARD_RAMDISK_OFFSET := 0x01000000
TARGET_KERNEL_CONFIG := msm_defconfig
TARGET_KERNEL_SOURCE := kernel/oppo/r7plus
TARGET_KERNEL_ARCH := arm64
TARGET_KERNEL_HEADER_ARCH := arm64
TARGET_KERNEL_CROSS_COMPILE_PREFIX := aarch64-linux-android-
TARGET_USES_UNCOMPRESSED_KERNEL := true
KERNEL_TOOLCHAIN := $(ANDROID_BUILD_TOP)/prebuilts/gcc/$(HOST_OS)-x86/aarch64/aarch64-linux-android-4.9/bin

# Audio
COMMON_GLOBAL_CFLAGS += -DAUDIO_NO_CALIBRATION_NODES
BOARD_USES_ALSA_AUDIO:= true
AUDIO_FEATURE_ENABLED_COMPRESS_VOIP := true
AUDIO_FEATURE_ENABLED_EXTN_FORMATS := true
AUDIO_FEATURE_ENABLED_EXTN_POST_PROC := true
AUDIO_FEATURE_ENABLED_FLUENCE := true
AUDIO_FEATURE_ENABLED_HFP := true
AUDIO_FEATURE_ENABLED_PCM_OFFLOAD := true
AUDIO_FEATURE_ENABLED_FLAC_OFFLOAD := true
AUDIO_FEATURE_ENABLED_PROXY_DEVICE := true
AUDIO_FEATURE_ENABLED_USBAUDIO := true
AUDIO_FEATURE_ENABLED_COMPRESS_CAPTURE := true
AUDIO_FEATURE_ENABLED_INCALL_MUSIC := true

TARGET_OTA_ASSERT_DEVICE := r7plus

# Partition info
BOARD_BOOTIMAGE_PARTITION_SIZE := 33554432
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 33554432
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 3221225472
BOARD_USERDATAIMAGE_PARTITION_SIZE := 25769803776
BOARD_FLASH_BLOCK_SIZE := 131072

# TWRP specific build flags
TARGET_RECOVERY_FSTAB := $(LOCAL_PATH)/ramdisk/twrp.fstab
TW_THEME := portrait_hdpi
RECOVERY_GRAPHICS_USE_LINELENGTH := true
TARGET_RECOVERY_PIXEL_FORMAT := "RGB_565"
TW_NO_USB_STORAGE := true
TW_INCLUDE_JB_CRYPTO := false
TW_NO_SCREEN_BLANK := true
TW_EXCLUDE_ENCRYPTED_BACKUPS := true
TW_INCLUDE_L_CRYPTO := true
#TW_TARGET_USES_QCOM_BSP := true
TW_INPUT_BLACKLIST := "accelerometer"
TW_NEW_ION_HEAP := true
BOARD_HAS_NO_REAL_SDCARD := true
BOARD_SUPPRESS_SECURE_ERASE := true

include device/oppo/r7/BoardConfigCommon.mk
