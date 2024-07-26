#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from kunlun2 device
$(call inherit-product, device/lenovo/kunlun2/device.mk)

PRODUCT_DEVICE := kunlun2
PRODUCT_NAME := omni_kunlun2
PRODUCT_BRAND := lenovo
PRODUCT_MODEL := Lenovo Z6 Lite
PRODUCT_MANUFACTURER := lenovo

PRODUCT_GMS_CLIENTID_BASE := android-lenovo

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="aosp_kunlun2-userdebug 14 UQ1A.240205.002 1712170669 release-keys"

BUILD_FINGERPRINT := lenovo/kunlun2/kunlun2:14/UQ1A.240205.002/1857:userdebug/release-keys
