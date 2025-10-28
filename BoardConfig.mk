#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Board
TARGET_BOOTLOADER_BOARD_NAME := picasso
TARGET_BOARD_PLATFORM := lito
TARGET_USE_EROFS := true

# Inherit from sm8250-common
include device/xiaomi/sm8250-common/BoardConfigCommon.mk

DEVICE_PATH := device/xiaomi/picasso

# Display
TARGET_SCREEN_DENSITY := 420

# Kernel
TARGET_KERNEL_SOURCE := kernel/xiaomi/picasso
TARGET_KERNEL_CONFIG := vendor/picasso_user_defconfig

# Props
TARGET_SYSTEM_PROP += $(DEVICE_PATH)/configs/props/system.prop
TARGET_VENDOR_PROP += $(DEVICE_PATH)/configs/props/vendor.prop

# Vintf
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/configs/manifest/manifest.xml
DEVICE_FRAMEWORK_COMPATIBILITY_MATRIX_FILE += \
	$(DEVICE_PATH)/configs/manifest/xiaomi_framework_compatibility_matrix.xml

# Wifi
CONFIG_ACS := true
CONFIG_IEEE80211AC := true

# Inherit from the proprietary version
include vendor/xiaomi/picasso/BoardConfigVendor.mk