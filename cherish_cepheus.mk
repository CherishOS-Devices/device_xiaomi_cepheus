#
# Copyright (C) 2020 The LineageOS Project
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
$(call inherit-product, vendor/cherish/config/common_full_phone.mk)

# Boot animation
TARGET_BOOT_ANIMATION_RES := 1080

# FOD animations
EXTRA_FOD_ANIMATIONS := true
TARGET_WANTS_FOD_ANIMATIONS := true

# Device identifier
PRODUCT_NAME := cherish_cepheus
PRODUCT_DEVICE := cepheus
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Mi 9
PRODUCT_MANUFACTURER := Xiaomi
CHERISH_BUILD_TYPE := OFFICIAL
WITH_GMS := true

PRODUCT_GENERIC_PROPERTIES += \
    ro.cherish.maintainer=Freesoul00

	# Build Fingerprint
PRODUCT_BUILD_PROP_OVERRIDES += \
TARGET_DEVICE="cepheus" \
PRODUCT_NAME="cepheus" \
PRIVATE_BUILD_DESC="redfin-user 11 RQ2A.210605.003 7255357 release-keys"
BUILD_FINGERPRINT := "google/redfin/redfin:11/RQ2A.210505.003/7255357:user/release-keys"

PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
		ro.build.fingerprint=$(BUILD_FINGERPRINT)

# Include firmware
$(call inherit-product, vendor/xiaomi/firmware/cepheus/firmware.mk)
