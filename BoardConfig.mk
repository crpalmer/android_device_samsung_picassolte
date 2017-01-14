# Copyright (C) 2009 The CyanogenMod Project
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
# This file sets variables that control the way modules are built
# thorughout the system. It should not be used to conditionally
# disable makefiles (the proper mechanism to control what gets
# included in a build is to use PRODUCT_PACKAGES in a product
# definition file).
#

include device/samsung/tabpro-common/BoardConfigCommon.mk

TARGET_OTA_ASSERT_DEVICE := picassolte,picassoltexx

# Kernel
BOARD_MKBOOTIMG_ARGS := --ramdisk_offset 0x02900000 --tags_offset 0x02700000
BOARD_CUSTOM_BOOTIMG_MK := device/samsung/picassolte/mkbootimg.mk
TARGET_KERNEL_CONFIG := picassolte_defconfig

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/samsung/picassolte/bluetooth
BOARD_BLUEDROID_VENDOR_CONF := device/samsung/picassolte/bluetooth/vnd_picassolte.txt
BOARD_BLUETOOTH_USES_HCIATTACH_PROPERTY := false
BOARD_HAVE_BLUETOOTH_BCM := true

# Partitions
BOARD_BOOTIMAGE_PARTITION_SIZE := 10485760
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 13631488
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 2621440000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 12713966592

# Recovery
TARGET_RECOVERY_FSTAB := device/samsung/picassolte/rootdir/etc/fstab.qcom

# WiFi
BOARD_WLAN_DEVICE := bcmdhd
BOARD_HOSTAPD_PRIVATE_LIB := lib_driver_cmd_$(BOARD_WLAN_DEVICE)
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_$(BOARD_WLAN_DEVICE)
WIFI_DRIVER_FW_PATH_AP      := "/system/etc/wifi/bcmdhd_apsta.bin"
WIFI_DRIVER_FW_PATH_PARAM   := "/sys/module/dhd/parameters/firmware_path"
WIFI_DRIVER_FW_PATH_STA     := "/system/etc/wifi/bcmdhd_sta.bin"
