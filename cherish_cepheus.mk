#
# Copyright (C) 2020 The CherishOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from cepheus device
$(call inherit-product, device/xiaomi/cepheus/device.mk)

# Inherit some common CHERISH stuff.
$(call inherit-product, vendor/cherish/config/common.mk)
TARGET_SUPPORTS_QUICK_TAP := true
# Boot animation
TARGET_BOOT_ANIMATION_RES := 1080

# Device identifier
PRODUCT_NAME := cherish_cepheus
PRODUCT_DEVICE := cepheus
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Mi 9
PRODUCT_MANUFACTURER := Xiaomi
CHERISH_BUILD_TYPE := OFFICIAL
WITH_GMS := true
TARGET_INCLUDE_LIVE_WALLPAPERS := false

PRODUCT_GENERIC_PROPERTIES += \
    ro.cherish.maintainer=Freesoul00

# Fingerprint
BUILD_FINGERPRINT := google/redfin/redfin:12/SPB5.210812.002/7671067:user/release-keys
BUILD_DESCRIPTION := redfin-user 12 SPB5.210812.002 7671067 release-keys
PRODUCT_PROPERTY_OVERRIDES += \
 ro.build.fingerprint=$(BUILD_FINGERPRINT)

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="$(BUILD_DESCRIPTION)"

# Include firmware
# $(call inherit-product, vendor/xiaomi-firmware/cepheus/firmware.mk)
