#
# Copyright (C) 2019 The Android Open Source Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common PEX stuff.
$(call inherit-product, vendor/aosp/config/common_full_phone.mk)
TARGET_USES_AOSP_RECOVERY := true
TARGET_SUPPORTS_QUICK_TAP := true
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_INCLUDE_LIVE_WALLPAPERS := true
TARGET_HAS_UDFPS := false
EXTRA_UDFPS_ANIMATIONS := false
TARGET_SUPPORTS_NEXT_GEN_ASSISTANT := true

# Inherit from alioth device
$(call inherit-product, device/xiaomi/alioth/device.mk)

PRODUCT_NAME := aosp_alioth
PRODUCT_DEVICE := alioth
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := M2012K11AG

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="alioth_global-user 13 RKQ1.211001.001 V14.0.4.0.TKHMIXM release-keys"

BUILD_FINGERPRINT := Redmi/alioth_global/alioth:13/RKQ1.211001.001/V14.0.4.0.TKHMIXM:user/release-keys

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

BUILD_USERNAME := vertig038
