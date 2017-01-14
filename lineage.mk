$(call inherit-product, device/samsung/picassolte/full_picassolte.mk)

# Inherit some common LineageOS stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

PRODUCT_DEVICE := picassolte
PRODUCT_NAME := cm_picassolte
