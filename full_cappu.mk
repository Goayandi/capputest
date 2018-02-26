$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)

# Inherit from hardware-specific part of the product configuration
$(call inherit-product, device/xiaomi/cappu/device.mk)

# Release name
PRODUCT_RELEASE_NAME := MIPAD3

PRODUCT_DEVICE := cappu
PRODUCT_NAME := full_cappu
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := MI PAD 3
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_RESTRICT_VENDOR_FILES := false

# Boot animation
TARGET_SCREEN_HEIGHT      := 2048
TARGET_SCREEN_WIDTH       := 1536
TARGET_BOOTANIMATION_HALF_RES := true

PRODUCT_DEFAULT_LANGUAGE := en
PRODUCT_DEFAULT_REGION   := US
