#
# Copyright (C) 2025 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from X6532 device
$(call inherit-product, device/infinix/X6532/device.mk)

TARGET_DISABLE_EPPE := true

PRODUCT_DEVICE := X6532
PRODUCT_NAME := lineage_X6532
PRODUCT_BRAND := Infinix
PRODUCT_MANUFACTURER := infinix
PRODUCT_MODEL := Infinix Smart 9

PRODUCT_GMS_CLIENTID_BASE := android-transsion

BUILD_FINGERPRINT := Infinix/TSSI/AGo-64:14/UP1A.231005.007/241017V1860:user/release-keys

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="sys_tssi_32_ago_infinix-user 14 UP1A.231005.007 722914 release-keys" \
    DeviceName="X6532"

PRODUCT_PROPERTY_OVERRIDES += \
    ro.build.fingerprint=$(BUILD_FINGERPRINT)
