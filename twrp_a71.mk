#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/base.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)

# Inherit some common twrp stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from a71 device
$(call inherit-product, device/samsung/a71/device.mk)

# Charger
PRODUCT_PACKAGES += \
    charger_res_images

PRODUCT_COPY_FILES += $(call find-copy-subdir-files,*,device/samsung/a71/recovery/root,recovery/root)

PRODUCT_DEVICE := a71
PRODUCT_NAME := twrp_a71
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-A715F
PRODUCT_MANUFACTURER := samsung

PRODUCT_GMS_CLIENTID_BASE := android-samsung-ss

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="a71naxx-user 11 RP1A.200720.012 A715FXXUADWE1 release-keys"

BUILD_FINGERPRINT := samsung/a71naxx/a71:11/RP1A.200720.012/A715FXXUADWE1:user/release-keys
