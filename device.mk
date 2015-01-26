#
# Copyright (C) 2011 The CyanogenMod Project
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

## Get non-open-source specific aspects
$(call inherit-product-if-exists, vendor/samsung/tabpro-common/tabpro-common-vendor.mk)

## overlays
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

# Audio configuration
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/audio/mixer_paths.xml:system/etc/mixer_paths.xml \
    $(LOCAL_PATH)/audio/audio_policy.conf:system/etc/audio_policy.conf \

# Boot animation
TARGET_SCREEN_WIDTH := 2560
TARGET_SCREEN_HEIGHT := 1440

# NFC doesn't exist

PRODUCT_COPY_FILES_OVERRIDES += \
   system/etc/permissions/com.android.nfc_extras.xml \
   system/etc/permissions/android.hardware.nfc.xml \
   system/etc/permissions/android.hardware.nfc.hce.xml

# Wifi

PRODUCT_PACKAGES += \
   libnetcmdiface

$(call inherit-product, device/samsung/tabpro-common/tabpro.mk)
