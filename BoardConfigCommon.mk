# Copyright (C) Sascha Nesterovic <nesterovic5@gmail.com>

LOCAL_PATH := device/samsung/great-common

# Include path
TARGET_SPECIFIC_HEADER_PATH := $(LOCAL_PATH)/include

# Platform
BOARD_VENDOR := samsung
TARGET_BOARD_PLATFORM := exynos5
TARGET_SLSI_VARIANT := cm
TARGET_SOC := exynos8895
TARGET_BOOTLOADER_BOARD_NAME := universal8895
TARGET_NO_BOOTLOADER := true
TARGET_NO_RADIOIMAGE := true

# Binder
TARGET_USES_64_BIT_BINDER := true

# CPUsets
ENABLE_CPUSETS := true

#HWC
BOARD_USES_HWC_SERVICES := true

# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := generic

# Secondary Architecture
TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv7-a-neon
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := cortex-a53.a57

# Kernel
TARGET_KERNEL_ARCH := arm64
TARGET_KERNEL_HEADER_ARCH := arm64
TARGET_KERNEL_CROSS_COMPILE_PREFIX := aarch64-linux-android-
BOARD_KERNEL_BASE := 0x10000000
BOARD_KERNEL_PAGESIZE := 2048
TARGET_USES_UNCOMPRESSED_KERNEL := true

# Image
BOARD_CUSTOM_BOOTIMG_MK := hardware/samsung/mkbootimg.mk
BOARD_KERNEL_SEPARATED_DT := true
BOARD_MKBOOTIMG_ARGS := --kernel_offset 0x00008000 --ramdisk_offset 0x01000000 --tags_offset 0x00000100 --board SRPQC03B001KU
TARGET_CUSTOM_DTBTOOL := dtbhtoolExynos

# Flags
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true
BOARD_HAS_LARGE_FILESYSTEM := true

# Partitions
BOARD_BOOTIMAGE_PARTITION_SIZE     := 41943040
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 48234496
BOARD_USERDATAIMAGE_PARTITION_SIZE := 27044851712
BOARD_SYSTEMIMAGE_PARTITION_SIZE   := 4508876800
BOARD_CACHEIMAGE_PARTITION_SIZE    := 209715200
BOARD_FLASH_BLOCK_SIZE := 131072

# HDMI
BOARD_HDMI_INCAPABLE := true
BOARD_USES_GSC_VIDEO := true

# FIMG2D
BOARD_USES_SKIA_FIMGAPI := true

# (G)SCALER
BOARD_USES_SCALER := true
BOARD_USES_DT := true

# Samsung OpenMAX Video
BOARD_USE_STOREMETADATA := true
BOARD_USE_METADATABUFFERTYPE := true
BOARD_USE_DMA_BUF := true
BOARD_USE_ANB_OUTBUF_SHARE := true
BOARD_USE_IMPROVED_BUFFER := true
BOARD_USE_NON_CACHED_GRAPHICBUFFER := true
BOARD_USE_GSC_RGB_ENCODER := true
BOARD_USE_CSC_HW := true
BOARD_USE_QOS_CTRL := false
BOARD_USE_S3D_SUPPORT := true
BOARD_USE_VP8ENC_SUPPORT := true

# Graphics
USE_OPENGL_RENDERER := true
NUM_FRAMEBUFFER_SURFACE_BUFFERS := 3
BOARD_USES_VIRTUAL_DISPLAY := true

PRODUCT_PACKAGES += \
	hwcomposer.exynos5

# Hardware
BOARD_HARDWARE_CLASS += hardware/samsung/cmhw
BOARD_HARDWARE_CLASS += device/samsung/great-common/cmhw

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true
BOARD_HAVE_SAMSUNG_BLUETOOTH := true
BOARD_CUSTOM_BT_CONFIG := $(LOCAL_PATH)/bluetooth/libbt_vndcfg.txt
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(LOCAL_PATH)/bluetooth

# Camera
BOARD_USE_SAMSUNG_CAMERAFORMAT_NV21 := true

# Charger
BOARD_CHARGING_MODE_BOOTING_LPM := /sys/class/power_supply/battery/batt_lp_charging
BOARD_CHARGER_ENABLE_SUSPEND := true
BOARD_CHARGER_SHOW_PERCENTAGE := true
CHARGING_ENABLED_PATH := /sys/class/power_supply/battery/batt_lp_charging

# Fonts
EXTENDED_FONT_FOOTPRINT := true

# Packaging
BLOCK_BASED_OTA := false

# Power Hal
TARGET_POWERHAL_VARIANT := samsung

# Properties
TARGET_SYSTEM_PROP := device/samsung/great-common/system.prop

# Renderscript
BOARD_OVERRIDE_RS_CPU_VARIANT_32 := cortex-a53.a57
BOARD_OVERRIDE_RS_CPU_VARIANT_64 := exynos-m2

# LED
RED_LED_PATH := "/sys/class/leds/led_r/brightness"
GREEN_LED_PATH := "/sys/class/leds/led_g/brightness"
BLUE_LED_PATH := "/sys/class/leds/led_b/brightness"
BACKLIGHT_PATH := "/sys/class/backlight/panel/brightness"

# NFC
BOARD_NFC_HAL_SUFFIX := universal8895

# RIL
BOARD_MODEM_TYPE := ss333
BOARD_RIL_CLASS := ../../../$(LOCAL_PATH)/ril

# Recovery
BOARD_HAS_NO_SELECT_BUTTON := true
BOARD_RECOVERY_SWIPE := true
BOARD_USE_CUSTOM_RECOVERY_FONT := \"roboto_23x41.h\"
RECOVERY_GRAPHICS_USE_LINELENGTH := true
RECOVERY_SDCARD_ON_DATA := true
TARGET_RECOVERY_PIXEL_FORMAT := "ABGR_8888"
TARGET_USE_CUSTOM_LUN_FILE_PATH := "/sys/devices/15400000.usb/15400000.dwc3/gadget/lun%d/file"

# TWRP specific
ifeq ($(RECOVERY_VARIANT),twrp)
TARGET_RECOVERY_FSTAB := device/samsung/great-common/ramdisk/recovery.fstab
TW_BRIGHTNESS_PATH := "/sys/class/backlight/panel/brightness"
TW_DEFAULT_BRIGHTNESS := 16200
TW_EXCLUDE_SUPERSU := true
TW_EXTRA_LANGUAGES := true
TW_HAS_DOWNLOAD_MODE := true
TW_INCLUDE_CRYPTO := true
TW_INCLUDE_NTFS_3G := true
TW_USE_NEW_MINADBD := true
TW_MAX_BRIGHTNESS := 36600
TW_NO_REBOOT_BOOTLOADER := true
TW_THEME := portrait_hdpi
else
TARGET_RECOVERY_FSTAB := device/samsung/great-common/ramdisk/fstab.samsungexynos8895
endif

# Sensors
TARGET_NO_SENSOR_PERMISSION_CHECK := true
TARGET_SEC_FP_HAL_VARIANT := bauth

# Wifi
TARGET_USES_64_BIT_BCMDHD        := true
BOARD_HAVE_SAMSUNG_WIFI          := true
BOARD_WLAN_DEVICE                := bcmdhd
WPA_SUPPLICANT_VERSION           := VER_0_8_X
BOARD_WPA_SUPPLICANT_DRIVER      := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_bcmdhd
BOARD_HOSTAPD_DRIVER             := NL80211
BOARD_HOSTAPD_PRIVATE_LIB        := lib_driver_cmd_bcmdhd
WIFI_DRIVER_FW_PATH_PARAM        := "/sys/module/dhd/parameters/firmware_path"
WIFI_DRIVER_FW_PATH_STA          := "/system/etc/wifi/bcmdhd_sta.bin"
WIFI_DRIVER_FW_PATH_AP           := "/system/etc/wifi/bcmdhd_apsta.bin"
WIFI_BAND                        := 802_11_ABG

# Lockscreen charging info: real time values
BOARD_GLOBAL_CFLAGS += -DBATTERY_REAL_INFO

# SELinux
BOARD_SEPOLICY_DIRS := device/samsung/great-common/sepolicy

# SECComp filters
BOARD_SECCOMP_POLICY += device/samsung/great-common/seccomp

# Inherit from the proprietary version
-include vendor/samsung/great-common/BoardConfigVendor.mk
