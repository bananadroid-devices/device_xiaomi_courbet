#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from courbet device
$(call inherit-product, device/xiaomi/courbet/device.mk)

# Inherit some common BananaDroid stuff.
$(call inherit-product, vendor/banana/config/common.mk)

PRODUCT_NAME := banana_courbet
PRODUCT_DEVICE := courbet
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Mi 11 Lite 4G
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="courbet_global-user 13 TKQ1.221013.002 V14.0.2.0.TKQMIXM release-keys"

BUILD_FINGERPRINT := Xiaomi/courbet_global/courbet:13/TKQ1.221013.002/V14.0.2.0.TKQMIXM:user/release-keys

# BananaDroid
BANANA_MAINTAINER := travarilo
TARGET_ENABLE_BLUR := true
TARGET_FACE_UNLOCK_SUPPORTED := true
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_EXCLUDE_MATLOG := true

# Recovery
TARGET_USES_AOSP_RECOVERY := true
