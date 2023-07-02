#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Octavi stuff.
$(call inherit-product, vendor/octavi/config/common_full_phone.mk)

TARGET_BOOT_ANIMATION_RES := 1080
OCTAVI_BUILD_TYPE := UNOFFICIAL
WITH_GAPPS := true
TARGET_FACE_UNLOCK_SUPPORTED := true
TARGET_SUPPORTS_QUICK_TAP := true
EXTRA_UDFPS_ANIMATIONS := true
TARGET_HAS_UDFPS := true
TARGET_ENABLE_BLUR := true
TARGET_EXCLUDES_AUDIOFX := true
OCTAVI_MAINTAINER := Shravansayzz

# Inherit from RMX1901 device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

PRODUCT_BRAND := Realme
PRODUCT_DEVICE := RMX1901
PRODUCT_MANUFACTURER := Realme
PRODUCT_NAME := octavi_RMX1901
PRODUCT_MODEL := Realme X

PRODUCT_GMS_CLIENTID_BASE := android-oppo

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="cheetah-user 13 TQ3A.230605.012 10204971 release-keys" \
    PRODUCT_NAME="RMX1901"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := google/cheetah/cheetah:13/TQ3A.230605.012/10204971:user/release-keys

PRODUCT_PROPERTY_OVERRIDES += \
    ro.build.fingerprint=$(BUILD_FINGERPRINT)
