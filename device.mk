#
# Copyright (C) 2015 TeamEOS
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

LOCAL_PATH := device/oppo/r7plus

DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

# Ramdisk
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/ramdisk/init.r7plus.rc:root/init.r7plus.rc

# Audio configuration
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/audio/audio_platform_info.xml:/system/etc/audio_platform_info.xml \
    $(LOCAL_PATH)/configs/audio/mixer_paths_15018.xml:/system/etc/mixer_paths_mtp.xml \
    $(LOCAL_PATH)/configs/audio/aanc_tuning_mixer.txt:/system/etc/aanc_tuning_mixer.txt \
    $(LOCAL_PATH)/configs/audio/sound_trigger_mixer_paths.xml:/system/etc/sound_trigger_mixer_paths.xml

# ACDB Loader calibration
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/acdbdata/15018/Bluetooth_cal.acdb:system/etc/acdbdata/15018/Bluetooth_cal.acdb \
    $(LOCAL_PATH)/acdbdata/15018/General_cal.acdb:system/etc/acdbdata/15018/General_cal.acdb \
    $(LOCAL_PATH)/acdbdata/15018/Global_cal.acdb:system/etc/acdbdata/15018/Global_cal.acdb \
    $(LOCAL_PATH)/acdbdata/15018/Handset_cal.acdb:system/etc/acdbdata/15018/Handset_cal.acdb \
    $(LOCAL_PATH)/acdbdata/15018/Hdmi_cal.acdb:system/etc/acdbdata/15018/Hdmi_cal.acdb \
    $(LOCAL_PATH)/acdbdata/15018/Headset_cal.acdb:system/etc/acdbdata/15018/Headset_cal.acdb \
    $(LOCAL_PATH)/acdbdata/15018/Speaker_cal.acdb:system/etc/acdbdata/15018/Speaker_cal.acdb \
    $(LOCAL_PATH)/acdbdata/MTP/MTP_Bluetooth_cal.acdb:system/etc/acdbdata/MTP/MTP_Bluetooth_cal.acdb \
    $(LOCAL_PATH)/acdbdata/MTP/MTP_General_cal.acdb:system/etc/acdbdata/MTP/MTP_General_cal.acdb \
    $(LOCAL_PATH)/acdbdata/MTP/MTP_Global_cal.acdb:system/etc/acdbdata/MTP/MTP_Global_cal.acdb \
    $(LOCAL_PATH)/acdbdata/MTP/MTP_Handset_cal.acdb:system/etc/acdbdata/MTP/MTP_Handset_cal.acdb \
    $(LOCAL_PATH)/acdbdata/MTP/MTP_Hdmi_cal.acdb:system/etc/acdbdata/MTP/MTP_Hdmi_cal.acdb \
    $(LOCAL_PATH)/acdbdata/MTP/MTP_Headset_cal.acdb:system/etc/acdbdata/MTP/MTP_Headset_cal.acdb \
    $(LOCAL_PATH)/acdbdata/MTP/MTP_Speaker_cal.acdb:system/etc/acdbdata/MTP/MTP_Speaker_cal.acdb \
    $(LOCAL_PATH)/acdbdata/QRD/QRD_Bluetooth_cal.acdb:system/etc/acdbdata/QRD/QRD_Bluetooth_cal.acdb \
    $(LOCAL_PATH)/acdbdata/QRD/QRD_General_cal.acdb:system/etc/acdbdata/QRD/QRD_General_cal.acdb \
    $(LOCAL_PATH)/acdbdata/QRD/QRD_Global_cal.acdb:system/etc/acdbdata/QRD/QRD_Global_cal.acdb \
    $(LOCAL_PATH)/acdbdata/QRD/QRD_Handset_cal.acdb:system/etc/acdbdata/QRD/QRD_Handset_cal.acdb \
    $(LOCAL_PATH)/acdbdata/QRD/QRD_Hdmi_cal.acdb:system/etc/acdbdata/QRD/QRD_Hdmi_cal.acdb \
    $(LOCAL_PATH)/acdbdata/QRD/QRD_Headset_cal.acdb:system/etc/acdbdata/QRD/QRD_Headset_cal.acdb \
    $(LOCAL_PATH)/acdbdata/QRD/QRD_Speaker_cal.acdb:system/etc/acdbdata/QRD/QRD_Speaker_cal.acdb

# Input configuration
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/keylayout/gpio-keys.kl:system/usr/keylayout/gpio-keys.kl

# Sensor calibration configuration
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/sensor/calmodule.cfg:/system/vendor/etc/calmodule.cfg
