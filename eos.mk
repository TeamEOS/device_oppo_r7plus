$(call inherit-product, device/oppo/r5/device.mk)

# Inherit some common EOS stuff.
$(call inherit-product, vendor/eos/config/common_full_phone.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Copy Bootanimation
PRODUCT_COPY_FILES += \
vendor/eos/prebuilt/common/bootanimation/1080.zip:system/media/bootanimation.zip

PRODUCT_NAME := eos_r5
PRODUCT_DEVICE := r5
PRODUCT_BRAND := OPPO
PRODUCT_MODEL := R5
PRODUCT_MANUFACTURER := OPPO

PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_FINGERPRINT=OPPO/R8106/R5:4.4.4/KTU84P/1413614073:user/release-keys \
    PRIVATE_BUILD_DESC="msm8916_32-user 4.4.4 KTU84P eng.root.20150422.010050 release-keys"