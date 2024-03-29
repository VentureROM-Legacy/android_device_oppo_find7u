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

# Inherit from MSM8974 common
-include device/oppo/msm8974-common/BoardConfigCommon.mk

# Kernel
TARGET_KERNEL_CONFIG := paranoid_find7_defconfig
BOARD_CUSTOM_BOOTIMG_MK := device/oppo/find7u/mkbootimg.mk

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/oppo/find7u/bluetooth

# Camera
USE_DEVICE_SPECIFIC_CAMERA := true
COMMON_GLOBAL_CFLAGS += -DOPPO_CAMERA_HARDWARE

# Filesystem
BOARD_BOOTIMAGE_PARTITION_SIZE     := 16777216
BOARD_CACHEIMAGE_PARTITION_SIZE    := 536870912
BOARD_PERSISTIMAGE_PARTITION_SIZE  := 33554432
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 16777216
BOARD_SYSTEMIMAGE_PARTITION_SIZE   := 1073741824
BOARD_USERDATAIMAGE_PARTITION_SIZE := 13747929088 # 13747945472 - 16384 for crypto footer
#BOARD_USERDATAIMAGE_PARTITION_SIZE := 3221225472

# Init
TARGET_INIT_VENDOR_LIB := libinit_find7

# Recovery
TARGET_RECOVERY_FSTAB := device/oppo/find7u/rootdir/etc/fstab.qcom

# External apps on SD
TARGET_EXTERNAL_APPS = sdcard1

# TWRP specific build flags
RECOVERY_SDCARD_ON_DATA := true
DEVICE_RESOLUTION := 1080x1920
RECOVERY_GRAPHICS_USE_LINELENGTH := true
TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"
TW_NO_USB_STORAGE := true
TW_INCLUDE_JB_CRYPTO := true
TW_NO_SCREEN_BLANK := true

# Assert
TARGET_OTA_ASSERT_DEVICE := FIND7,find7,find7a,find7u,X9007,X9006,X9076

# Releasetools
TARGET_RELEASETOOLS_EXTENSIONS := device/oppo/find7u

# inherit from the proprietary version
-include vendor/oppo/find7/BoardConfigVendor.mk
