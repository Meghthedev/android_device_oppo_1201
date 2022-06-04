$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

#CHECK ONCE
# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

$(call inherit-product-if-exists, vendor/oppo/1201/1201-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/oppo/oppo/overlay

#fix this
PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel

$(call inherit-product, build/target/product/full.mk)

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := full_oppo
PRODUCT_DEVICE := oppo
