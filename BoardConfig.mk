#
# Copyright 2015 The Android Open Source Project
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

DEVICE_PATH := device/xiaomi/certus

# Architecture
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_VARIANT := generic
TARGET_CPU_VARIANT_RUNTIME := cortex-a53
TARGET_ARCH := arm64
TARGET_CPU_ABI := arm64-v8a

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv8-a
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := generic
TARGET_2ND_CPU_VARIANT_RUNTIME := cortex-a53

# Audio
USE_XML_AUDIO_POLICY_CONF := 1

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(DEVICE_PATH)/bluetooth
BOARD_HAVE_BLUETOOTH := true

# Board
TARGET_BOARD_PLATFORM := mt6765

# Broken
BUILD_BROKEN_DUP_RULES := true

# Charger
BOARD_CHARGER_ENABLE_SUSPEND := true

# Display
TARGET_SCREEN_DENSITY := 320

# Kernel
BOARD_KERNEL_CMDLINE := bootopt=64S3,32N2,64N2
BOARD_KERNEL_IMAGE_NAME := Image.gz-dtb
BOARD_MKBOOTIMG_ARGS := --base 0x40078000 --ramdisk_offset 0x11A88000 --second_offset 0xE88000 --tags_offset 0x7808000
BOARD_MKBOOTIMG_ARGS += --board $(TARGET_BOARD_PLATFORM) --header_version 1 --pagesize 2048
BOARD_KERNEL_CMDLINE += androidboot.boot_devices=bootdevice androidboot.selinux=permissive
TARGET_KERNEL_SOURCE := kernel/xiaomi/mt6765
TARGET_KERNEL_CONFIG := certus_defconfig
TARGET_KERNEL_CLANG_COMPILE := true

# OTA
TARGET_OTA_ASSERT_DEVICE := cactus,cereus,certus

# Partitons
BOARD_CERTUS_DYNAMIC_PARTITIONS_PARTITION_LIST := system vendor
BOARD_SUPER_PARTITION_BLOCK_DEVICES := cust vendor system
BOARD_SUPER_PARTITION_GROUPS := certus_dynamic_partitions
BOARD_SUPER_PARTITION_SYSTEM_DEVICE_SIZE := 2684354560
BOARD_SUPER_PARTITION_VENDOR_DEVICE_SIZE := 805306368
BOARD_SUPER_PARTITION_CUST_DEVICE_SIZE := 536870912
BOARD_CERTUS_DYNAMIC_PARTITIONS_SIZE := 4022337536
BOARD_SUPER_PARTITION_METADATA_DEVICE := system
BOARD_SUPER_PARTITION_SIZE := 4026531840
BOARD_USES_METADATA_PARTITION := true
BOARD_USERDATAIMAGE_PARTITION_SIZE := 3221225472
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 67108864
BOARD_CACHEIMAGE_PARTITION_SIZE := 268435456
BOARD_BOOTIMAGE_PARTITION_SIZE := 67108864
BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true
BOARD_FLASH_BLOCK_SIZE := 131072

# Recovery
TARGET_RECOVERY_FSTAB := $(DEVICE_PATH)/rootdir/etc/fstab.mt6765

# RIL
SIM_COUNT := 2

# Seccomp filters
BOARD_SECCOMP_POLICY := $(DEVICE_PATH)/seccomp

# Vendor
VENDOR_SECURITY_PATCH := 2020-10-05
TARGET_COPY_OUT_VENDOR := vendor
BOARD_VNDK_VERSION := current

# Verified Boot
BOARD_AVB_MAKE_VBMETA_IMAGE_ARGS += --flags 3
