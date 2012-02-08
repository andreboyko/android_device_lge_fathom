USE_CAMERA_STUB := true

# inherit from the proprietary version
-include vendor/lge/fathom/BoardConfigVendor.mk

TARGET_NO_BOOTLOADER := true
TARGET_NO_RECOVERY := true
TARGET_NO_RADIOIMAGE := true

TARGET_NO_BOOTLOADER := true

TARGET_BOARD_PLATFORM := qsd8k
TARGET_BOARD_PLATFORM_GPU := qcom-adreno200

TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
ARCH_ARM_HAVE_TLS_REGISTER := true

TARGET_GLOBAL_CFLAGS += -mfpu=neon -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mfpu=neon -mfloat-abi=softfp

#Do we need it?
TARGET_BOOTLOADER_BOARD_NAME := fathom

TARGET_GLOBAL_CFLAGS += -mfpu=neon -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mfpu=neon -mfloat-abi=softfp

#kernel
BOARD_KERNEL_CMDLINE := androidboot.hardware=fathom data_size=256 cache_size=60
BOARD_KERNEL_BASE := 0x11800000
BOARD_KERNEL_NEW_PPPOX := true

TARGET_PREBUILT_KERNEL := device/lge/fathom/kernel

#jit
WITH_JIT := true
ENABLE_JSC_JIT := true
JS_ENGINE := v8

# Wifi related defines
BOARD_WPA_SUPPLICANT_DRIVER := WEXT
WPA_SUPPLICANT_VERSION      := VER_0_6_X
BOARD_WLAN_DEVICE           := bcm4329
WIFI_DRIVER_MODULE_PATH     := "/system/lib/modules/bcm4329.ko"
WIFI_DRIVER_FW_STA_PATH     := "/etc/firmware/fw_bcm4329.bin"
WIFI_DRIVER_FW_AP_PATH      := "/etc/firmware/fw_bcm4329_apsta.bin"
WIFI_DRIVER_MODULE_ARG      := "firmware_path=/etc/firmware/fw_bcm4329.bin nvram_path=/etc/wifi/nvram.txt"
WIFI_DRIVER_MODULE_NAME     := "bcm4329"


#gsm and gps
#BOARD_VENDOR_QCOM_AMSS_VERSION := 3200
#BOARD_USES_QCOM_LIBS := true

#BOARD_VENDOR_QCOM_GPS_LOC_API_HARDWARE := fathom
#BOARD_VENDOR_QCOM_GPS_LOC_API_AMSS_VERSION := 1550

#usb
BOARD_USE_USB_MASS_STORAGE_SWITCH := true

#audio
#BOARD_USES_GENERIC_AUDIO := false 

#sensors

#fm - not working now
#BOARD_HAVE_FM_RADIO := true
#BOARD_GLOBAL_CFLAGS += -DHAVE_FM_RADIO

#bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true

#3d graphics
BOARD_EGL_CFG := device/lge/fathom/prebuilt/lib/egl/egl.cfg
