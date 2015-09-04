# Copy the 64-bit primary, 32-bit secondary zygote startup script
PRODUCT_COPY_FILES += system/core/rootdir/init.zygote64_32.rc:root/init.zygote64_32.rc

# Set the zygote property to select the 64-bit primary, 32-bit secondary script
# This line must be parsed before the one in core_minimal.mk
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += ro.zygote=zygote64_32

TARGET_SUPPORTS_32_BIT_APPS := true
TARGET_SUPPORTS_64_BIT_APPS := true

# Inherit from device
$(call inherit-product, device/oppo/r7plus/device.mk)
$(call inherit-product, device/oppo/r7/device-common.mk)

# Inherit some common EOS stuff.
$(call inherit-product, vendor/eos/config/common_full_phone.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Copy Bootanimation
PRODUCT_COPY_FILES += \
vendor/eos/prebuilt/common/bootanimation/1080.zip:system/media/bootanimation.zip

PRODUCT_NAME := eos_r7plus
PRODUCT_DEVICE := r7plus
PRODUCT_BRAND := OPPO
PRODUCT_MODEL := R7Plus
PRODUCT_MANUFACTURER := OPPO

PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_FINGERPRINT=OPPO/R7plusf/R7Plusm:5.1.1/LMY47V/1437558400:user/release-keys \
    PRIVATE_BUILD_DESC="msm8916_64-user 5.1.1 LMY47V eng..20150807.023105 dev-keys" \
    TARGET_DEVICE="R7plusf"