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
    PRIVATE_BUILD_DESC="msm8916_64-user 5.1.1 LMY47V eng..20150807.023105 dev-keys"