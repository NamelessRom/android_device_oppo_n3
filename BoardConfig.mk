#
# Copyright (C) 2014 The CyanogenMod Project
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

# Inherit from msm8974-common
-include device/oppo/msm8974-common/BoardConfigCommon.mk

# Include path
TARGET_SPECIFIC_HEADER_PATH += device/oppo/n3/include

# Kernel
BOARD_KERNEL_CMDLINE := console=ttyHSL0,115200,n8 androidboot.hardware=qcom user_debug=31 msm_rtb.filter=0x3F ehci-hcd.park=3 androidboot.selinux=permissive
TARGET_KERNEL_CONFIG := custom_n3_defconfig
TARGET_KERNEL_SOURCE := kernel/oppo/n3
BOARD_CUSTOM_BOOTIMG_MK := device/oppo/n3/mkbootimg.mk

# Assert
TARGET_OTA_ASSERT_DEVICE := n3,N5206,N5207

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/oppo/n3/bluetooth

# Camera
USE_DEVICE_SPECIFIC_CAMERA := true
COMMON_GLOBAL_CFLAGS += -DOPPO_CAMERA_HARDWARE

# Filesystem
BOARD_BOOTIMAGE_PARTITION_SIZE     := 16777216
BOARD_CACHEIMAGE_PARTITION_SIZE    := 536870912
BOARD_PERSISTIMAGE_PARTITION_SIZE  := 33554432
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 25165824
BOARD_SYSTEMIMAGE_PARTITION_SIZE   := 1577058304
BOARD_USERDATAIMAGE_PARTITION_SIZE := 114510381056 # 114510397440 - 16384 for crypto footer

# NFC
BOARD_NFC_CHIPSET := pn547

AUDIO_FEATURE_LOW_LATENCY_PRIMARY := true

# Recovery
RECOVERY_VARIANT := twrp
TARGET_RECOVERY_FSTAB := device/oppo/n3/rootdir/etc/fstab.qcom

# TWRP Flags
DEVICE_RESOLUTION    := 1080x1920
RECOVERY_GRAPHICS_USE_LINELENGTH := true
TW_NO_USB_STORAGE := true
TW_INCLUDE_JB_CRYPTO := false
TW_NO_SCREEN_BLANK := true
TW_EXCLUDE_ENCRYPTED_BACKUPS := true
TW_INCLUDE_L_CRYPTO := true
TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"

# Inherit from the proprietary version
-include vendor/oppo/n3/BoardConfigVendor.mk
