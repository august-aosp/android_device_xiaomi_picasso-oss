#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common PixelAge stuff.
$(call inherit-product, vendor/pixelage/config/common_full_phone.mk)

# Inherit from picasso device
$(call inherit-product, device/xiaomi/picasso/device.mk)

PRODUCT_NAME := pixelage_picasso
PRODUCT_DEVICE := picasso
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := Redmi K30 5G

TARGET_BOOT_ANIMATION_RES := 1080

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc=$(call normalize-path-list, "picasso-user 12 RKQ1.200826.002 V13.0.5.0.SGICNXM release-keys")

BUILD_FINGERPRINT := Redmi/picasso/picasso:12/RKQ1.200826.002/V13.0.5.0.SGICNXM:user/release-keys
