#
# Copyright (C) 2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lunaris stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from picasso device
$(call inherit-product, device/xiaomi/picasso/device.mk)

# Lunaris
WITH_GMS := true
TARGET_INCLUDE_LIVE_WALLPAPERS := true
TARGET_SUPPORTS_GOOGLE_RECORDER := true
TARGET_SUPPORTS_GOOGLE_FILES := true

PRODUCT_SYSTEM_PROPERTIES += \
    ro.paranoid.maintainer=hoang1007

PRODUCT_NAME := lunaris_picasso
PRODUCT_DEVICE := picasso
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := Redmi K30 5G

TARGET_BOOT_ANIMATION_RES := 1080

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="picasso-user 12 RKQ1.200826.002 V13.0.5.0.SGICNXM release-keys" \
    BuildFingerprint=Redmi/picasso/picasso:12/RKQ1.200826.002/V13.0.5.0.SGICNXM:user/release-keys
