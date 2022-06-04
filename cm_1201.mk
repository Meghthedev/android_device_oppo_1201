# Release name
PRODUCT_RELEASE_NAME := 1201

# Inherit some common  stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Must define platform variant before including any common things
TARGET_BOARD_PLATFORM_VARIANT := mt6582

# Vendor security patch level
PRODUCT_PROPERTY_OVERRIDES += \
    ro.cm.build.vendor_security_patch=none

$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)
PRODUCT_DEVICE := 1201
PRODUCT_NAME := cm_1201
PRODUCT_BRAND := oppo
PRODUCT_MODEL := 1201
PRODUCT_MANUFACTURER := oppo
