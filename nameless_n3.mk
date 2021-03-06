$(call inherit-product, device/oppo/n3/n3.mk)

# Inherit some common stuff
$(call inherit-product, vendor/nameless/config/common.mk)

# Enhanced NFC
$(call inherit-product, vendor/nameless/config/nfc_enhanced.mk)

PRODUCT_NAME := nameless_n3
PRODUCT_DEVICE := n3
PRODUCT_BRAND := OPPO
PRODUCT_MANUFACTURER := OPPO
PRODUCT_MODEL := N3

PRODUCT_GMS_CLIENTID_BASE := android-oppo

PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_FINGERPRINT=OPPO/N5206/N3:4.4.4/KTU84P/1415366188:user/release-keys \
    PRIVATE_BUILD_DESC="msm8974-user 4.4.4 KTU84P eng.root.20141129.010050 dev-keys"
