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

LOCAL_PATH := $(call my-dir)

ifneq ($(filter r7plus, $(TARGET_DEVICE)),)

include $(call all-makefiles-under,$(LOCAL_PATH))

# Symlink firmware from /persist
FIRMWARE_IMAGES := cmnlib.b00 cmnlib.b01 cmnlib.b02 cmnlib.b03 cmnlib.mdt \
	isdbtmm.b00 isdbtmm.b01 isdbtmm.b02 isdbtmm.b03 isdbtmm.mdt \
	keymaste.b00 keymaste.b01 keymaste.b02 keymaste.b03 keymaste.mdt \
	mba.mbn \
	modem.b00 modem.b01 modem.b02 modem.b03 modem.b04 modem.b05 modem.b06 modem.b08 modem.b09 modem.b12 modem.b13 modem.b14 modem.b15 modem.b16 modem.b17 modem.b18 modem.b21 modem.b22 modem.b23 modem.b25 modem.b26 modem.mdt modem.pr \
	playread.b00 playread.b01 playread.b02 playread.b03 playread.mdt \
	wcnss.b00 wcnss.b01 wcnss.b02 wcnss.b04 wcnss.b06 wcnss.b09 wcnss.b10 wcnss.b11 wcnss.mdt \
	widevine.b00 widevine.b01 widevine.b02 widevine.b03 widevine.mdt

FIRMWARE_SYMLINKS := $(addprefix $(TARGET_OUT_ETC)/firmware/,$(notdir $(FIRMWARE_IMAGES)))
$(FIRMWARE_SYMLINKS): $(LOCAL_INSTALLED_MODULE)
	@echo "Firmware link: $@"
	@mkdir -p $(dir $@)
	@rm -rf $@
	$(hide) ln -sf /firmware/image/$(notdir $@) $@

ALL_DEFAULT_INSTALLED_MODULES += $(FIRMWARE_SYMLINKS)

# Create symbolic links for WCNSS
$(shell mkdir -p $(TARGET_OUT)/etc/firmware/wlan/prima; \
    ln -sf /data/misc/wifi/WCNSS_qcom_cfg.ini \
            $(TARGET_OUT_ETC)/firmware/wlan/prima/WCNSS_qcom_cfg.ini \
    ln -sf /persist/WCNSS_qcom_wlan_nv.bin \
            $(TARGET_OUT_ETC)/firmware/wlan/prima/WCNSS_qcom_wlan_nv.bin; \
    ln -sf /persist/WCNSS_wlan_dictionary.dat \
            $(TARGET_OUT_ETC)/firmware/wlan/prima/WCNSS_wlan_dictionary.dat)

# Link vendor WCNSS firmware from /persist
$(shell mkdir -p $(TARGET_OUT_ETC)/wifi; \
    ln -sf /persist/WCNSS_qcom_cfg.ini \
            $(TARGET_OUT_ETC)/wifi/WCNSS_qcom_cfg.ini; \
    ln -sf /persist/WCNSS_qcom_wlan_nv.bin \
            $(TARGET_OUT_ETC)/wifi/WCNSS_qcom_wlan_nv.bin)

endif