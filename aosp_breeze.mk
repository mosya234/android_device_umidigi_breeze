#
# Copyright (C) 2020 The PixelExperience Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_p.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/updatable_apex.mk)

# Inherit some PE source stuff
TARGET_BOOT_ANIMATION_RES := 1080
$(call inherit-product, vendor/aosp/config/common_full_phone.mk)

# Inherit from breeze device makefile
$(call inherit-product, device/umidigi/breeze/device.mk)
$(call inherit-product, device/umidigi/breeze/mtk-hals.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := aosp_breeze
PRODUCT_DEVICE := breeze
PRODUCT_BRAND := UMIDIGI
PRODUCT_MODEL := breeze
PRODUCT_MANUFACTURER := UMIDIGI
