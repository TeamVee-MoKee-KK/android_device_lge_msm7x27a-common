# Copyright 2016 The Android Open Source Project
# Copyright 2016 TeamHacklG
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

$(call inherit-product, vendor/lge/msm7x27a-common/msm7x27a-common-vendor.mk)
$(call inherit-product, device/common/gps/gps_us_supl.mk)
$(call inherit-product, frameworks/native/build/phone-hdpi-512-dalvik-heap.mk)

DEVICE_PACKAGE_OVERLAYS += device/lge/msm7x27a-common/overlay

PRODUCT_COPY_FILES += \
    device/lge/msm7x27a-common/rootdir/root/init.lge-shared.rc:root/init.lge-shared.rc \
    device/lge/msm7x27a-common/rootdir/root/init.lge.usb.rc:root/init.lge.usb.rc

PRODUCT_COPY_FILES += \
    device/lge/msm7x27a-common/rootdir/system/usr/keylayout/7k_handset.kl:system/usr/keylayout/7k_handset.kl \
    device/lge/msm7x27a-common/rootdir/system/usr/keylayout/7x27a_kp.kl:system/usr/keylayout/7x27a_kp.kl

PRODUCT_COPY_FILES += \
    device/lge/msm7x27a-common/rootdir/system/etc/AudioFilter.csv:system/etc/AudioFilter.csv \
    device/lge/msm7x27a-common/rootdir/system/etc/audio_policy.conf:system/etc/audio_policy.conf \
    device/lge/msm7x27a-common/rootdir/system/etc/media_codecs.xml:system/etc/media_codecs.xml \
    device/lge/msm7x27a-common/rootdir/system/etc/media_profiles.xml:system/etc/media_profiles.xml

PRODUCT_COPY_FILES += \
    device/lge/msm7x27a-common/rootdir/system/etc/wifi/p2p_supplicant_overlay.conf:system/etc/wifi/p2p_supplicant_overlay.conf \
    device/lge/msm7x27a-common/rootdir/system/etc/wifi/wpa_supplicant_overlay.conf:system/etc/wifi/wpa_supplicant_overlay.conf

# SoftAP
PRODUCT_COPY_FILES += \
    device/lge/msm7x27a-common/rootdir/system/etc/hostapd/hostapd.accept:system/etc/hostapd/hostapd.accept \
    device/lge/msm7x27a-common/rootdir/system/etc/hostapd/hostapd.deny:system/etc/hostapd/hostapd.deny \
    device/lge/msm7x27a-common/rootdir/system/etc/hostapd/hostapd_default.conf:system/etc/hostapd/hostapd_default.conf

# Wlan
ifneq (exists, $(shell test -d $(TOP)/vendor/qcom/proprietary/wlan/volans && echo exists))
PRODUCT_COPY_FILES += \
    device/lge/msm7x27a-common/wlan/firmware/WCN1314_qcom_wlan_nv.bin:system/etc/firmware/wlan/volans/WCN1314_qcom_wlan_nv.bin \
    device/lge/msm7x27a-common/wlan/firmware/WCN1314_qcom_fw.bin:system/etc/firmware/wlan/volans/WCN1314_qcom_fw.bin \
    device/lge/msm7x27a-common/wlan/firmware/WCN1314_cfg.dat:system/etc/firmware/wlan/volans/WCN1314_cfg.dat \
    device/lge/msm7x27a-common/wlan/firmware/WCN1314_qcom_cfg.ini:system/etc/firmware/wlan/volans/WCN1314_qcom_cfg.ini
endif

# Permission files
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.bluetooth.xml:system/etc/permissions/android.hardware.bluetooth.xml \
    frameworks/native/data/etc/android.hardware.camera.xml:system/etc/permissions/android.hardware.camera.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.location.xml:system/etc/permissions/android.hardware.location.xml \
    frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.distinct.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.distinct.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.xml:system/etc/permissions/android.hardware.touchscreen.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
    frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml

# Display HAL
PRODUCT_PACKAGES += \
    gralloc.msm7x27a \
    copybit.msm7x27a \
    libqdMetaData \
    memtrack.msm7x27a

# Off-mode Charging
PRODUCT_PACKAGES += \
    charger \
    charger_res_images

# Media HAL
PRODUCT_PACKAGES += \
    libmm-omxcore \
    libOmxCore \
    libstagefrighthw \
    qcmediaplayer \
    libdashplayer

PRODUCT_BOOT_JARS += \
    qcmediaplayer

# GPS HAL
PRODUCT_PACKAGES += \
    gps.msm7x27a

# Power Hal
PRODUCT_PACKAGES += \
    power.msm7x27a

# Camera Hal
PRODUCT_PACKAGES += \
    camera.msm7x27a

# EXT4
PRODUCT_PACKAGES += \
    make_ext4fs \
    e2fsck \
    setup_fs

# Usb
PRODUCT_PACKAGES += \
    com.android.future.usb.accessory

# Audio HAL
PRODUCT_PACKAGES += \
    libaudioutils \
    audio.a2dp.default \
    audio.usb.default \
    audio.r_submix.default \
    audio.primary.msm7x27a \
    audio_policy.msm7x27a \
    libaudioparameter \
    libaudio-resampler

# BT HAL
PRODUCT_PACKAGES += \
    libbt-vendor

# Enable Torch
PRODUCT_PACKAGES += \
    Torch

include device/lge/msm7x27a-common/system_prop.mk
