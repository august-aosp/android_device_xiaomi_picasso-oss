#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

TARGET_BOARD_PLATFORM := lito
TARGET_HAS_CUSTOM_WIFI_CONF := true

# Inherit from sm8250-common
$(call inherit-product, device/xiaomi/sm8250-common/common.mk)

# Audio
PRODUCT_COPY_FILES += \
   $(call find-copy-subdir-files,*,$(LOCAL_PATH)/configs/audio/,$(TARGET_COPY_OUT_VENDOR)/etc)

# Boot animation
TARGET_SCREEN_HEIGHT := 2400
TARGET_SCREEN_WIDTH := 1080

# Camera
$(call soong_config_set,camera,override_format_from_reserved,true)

# Device uses high-density artwork where available
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := xxhdpi

# Init
$(call soong_config_set,xiaomi_kona,variant_lib,//$(LOCAL_PATH):libvariant_xiaomi_picasso)

# Overlays
PRODUCT_PACKAGES += \
    FrameworkResOverlayDevice \
    SettingsOverlayDevice \
    SystemUIOverlayDevice \
    WifiResOverlayDevice

# Shipping API level
PRODUCT_SHIPPING_API_LEVEL := 29

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)

# Thermal configs
PRODUCT_COPY_FILES += \
   $(call find-copy-subdir-files,*,$(LOCAL_PATH)/configs/thermal/,$(TARGET_COPY_OUT_VENDOR)/etc)

# WiFi
PRODUCT_COPY_FILES += \
   $(call find-copy-subdir-files,*,$(LOCAL_PATH)/configs/wifi/,$(TARGET_COPY_OUT_VENDOR)/etc/wifi)

# Inherit from vendor blobs
$(call inherit-product, vendor/xiaomi/picasso/picasso-vendor.mk)

# Inherit from MIUI Camera
$(call inherit-product-if-exists, vendor/xiaomi/camera/config.mk)

# Include signing keys
-include vendor/lineage-priv/keys/keys.mk
