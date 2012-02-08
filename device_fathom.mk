$(call inherit-product, build/target/product/full_base.mk)

DEVICE_PACKAGE_OVERLAYS += device/lge/fathom/overlay

ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := device/lge/fathom/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

DISABLE_DEXPREOPT := false

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel

#Hardware libs
PRODUCT_PACKAGES += \
    lights.fathom \
    copybit.qsd8k \
    gralloc.qsd8k

#Codecs
#PRODUCT_PACKAGES += \
#    libOmxCore \
#    libOmxVidEnc

#Needed libs
PRODUCT_PACKAGES += \
    librs_jni \
    e2fsck \
    SpareParts

#LiveWallpapers support
PRODUCT_PACKAGES += \
    LiveWallpapers \
    LiveWallpapersPicker \
    MagicSmokeWallpapers \
    VisualizationWallpapers

# Publish that we support the live wallpaper feature.
PRODUCT_COPY_FILES += \
    packages/wallpapers/LivePicker/android.software.live_wallpaper.xml:/system/etc/permissions/android.software.live_wallpaper.xml


#gps
$(call inherit-product, device/common/gps/gps_eu_supl.mk)
PRODUCT_COPY_FILES += device/common/gps/gps.conf_US:system/etc/gps.conf

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := full_fathom
PRODUCT_BRAND := LGE
PRODUCT_DEVICE := fathom
PRODUCT_MODEL := LG-VS750
PRODUCT_MANUFACTURER := LGE
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=fathom

#ramdisk additions
PRODUCT_COPY_FILES += \
    device/lge/fathom/prebuilt/init.fathom.rc:root/init.fathom.rc

#audio fw
PRODUCT_COPY_FILES += \
    device/lge/fathom/proprietary/etc/firmware/htcleo.acdb:system/etc/firmware/htcleo.acdb

#media profiles
PRODUCT_COPY_FILES += \
    device/lge/fathom/prebuilt/etc/media_profiles.xml:system/etc/media_profiles.xml

#Codecs
PRODUCT_COPY_FILES += \
    device/lge/fathom/proptietary/lib/libOmxCore.so:system/lib/libOmxCore.so \
    device/lge/fathom/proptietary/lib/libOmxVdec.so:system/lib/libOmxVdec.so \
    device/lge/fathom/proptietary/lib/libOmxVidEnc.so:system/lib/libOmxVidEnc.so

# 3D +
PRODUCT_COPY_FILES += \
    device/lge/fathom/proprietary/lib/egl/libEGL_adreno200.so:system/lib/egl/libEGL_adreno200.so \
    device/lge/fathom/proprietary/lib/egl/libGLESv1_CM_adreno200.so:system/lib/egl/libGLESv1_CM_adreno200.so \
    device/lge/fathom/proprietary/lib/egl/libGLESv2_adreno200.so:system/lib/egl/libGLESv2_adreno200.so \
    device/lge/fathom/proprietary/lib/egl/libq3dtools_adreno200.so:system/lib/egl/libq3dtools_adreno200.so \
    device/lge/fathom/proprietary/lib/libgsl.so:system/lib/libgsl.so \
    device/lge/fathom/proprietary/etc/firmware/yamato_pfp.fw:system/etc/firmware/yamato_pfp.fw \
    device/lge/fathom/proprietary/etc/firmware/yamato_pm4.fw:system/etc/firmware/yamato_pm4.fw

# Keylayouts
PRODUCT_COPY_FILES += \
    device/lge/fathom/prebuilt/fathom-keypad.kl:system/usr/keylayout/kbd_pp2106.kl \
    device/lge/fathom/prebuilt/fathom-keypad.kcm.bin:system/usr/keychars/kbd_pp2106.kcm.bin
#    device/lge/fathom/files/7k_handset.kl:system/usr/keylayout/7k_handset.kl

# Wifi
PRODUCT_COPY_FILES += \
    device/lge/fathom/prebuilt/lib/modules/bcm4329.ko:system/lib/modules/bcm4329.ko \
    device/lge/fathom/proprietary/etc/wifi/nvram.txt:system/etc/wifi/nvram.txt \
    device/lge/fathom/proprietary/etc/firmware/fw_bcm4329.bin:system/etc/firmware/fw_bcm4329.bin \
    device/lge/fathom/proprietary/etc/firmware/fw_bcm4329_apsta.bin:system/etc/firmware/fw_bcm4329_apsta.bin

#Bluetooth fw
PRODUCT_COPY_FILES += \
    device/lge/fathom/proprietary/etc/firmware/bcm4329.hcd:system/etc/firmware/bcm4329.hcd

#RIL
PRODUCT_COPY_FILES += \
    device/lge/fathom/proprietary/lib/libhtc_ril.so:system/lib/libhtc_ril.so

# Device permissions
PRODUCT_COPY_FILES += \
    frameworks/base/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    frameworks/base/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/base/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/base/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/base/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/base/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/base/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/base/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml

#properties

PRODUCT_LOCALES := hdpi
