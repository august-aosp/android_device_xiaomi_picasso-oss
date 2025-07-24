#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

TARGET_BOARD_PLATFORM := lito
TARGET_HAS_CUSTOM_WIFI_CONF := true

# Camera
$(call soong_config_set,camera,override_format_from_reserved,true)

# Overlays
DEVICE_PACKAGE_OVERLAYS += \
    $(LOCAL_PATH)/overlay

# Device uses high-density artwork where available
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := xxhdpi

# Audio
PRODUCT_COPY_FILES += \
   $(call find-copy-subdir-files,*,$(LOCAL_PATH)/configs/audio/,$(TARGET_COPY_OUT_VENDOR)/etc)

# Thermal configs
PRODUCT_COPY_FILES += \
   $(call find-copy-subdir-files,*,$(LOCAL_PATH)/configs/thermal/,$(TARGET_COPY_OUT_VENDOR)/etc)

# Boot animation
TARGET_SCREEN_HEIGHT := 2400
TARGET_SCREEN_WIDTH := 1080

# Platform
TARGET_BOARD_PLATFORM := lito
PRODUCT_SHIPPING_API_LEVEL := 29

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)

# WiFi
PRODUCT_COPY_FILES += \
   $(call find-copy-subdir-files,*,$(LOCAL_PATH)/configs/wifi/,$(TARGET_COPY_OUT_VENDOR)/etc/wifi)

PRODUCT_PACKAGES += \
    WifiResOverlayPicasso

# Inherit from sm8250-common
$(call inherit-product, device/xiaomi/sm8250-common/common.mk)

# Inherit from vendor blobs
$(call inherit-product, vendor/xiaomi/picasso/picasso-vendor.mk)

# Inherit from MIUI Camera
$(call inherit-product-if-exists, vendor/xiaomi/camera/config.mk)

# Include signing keys
-include vendor/lineage-priv/keys/keys.mk
