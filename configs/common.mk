# Common overlays
DEVICE_PACKAGE_OVERLAYS += device/xiaomi/cappu/ext/overlay

# Shim libraries
PRODUCT_PACKAGES += \
    libmtkshim_log \
    libmtkshim_audio \
    libmtkshim_ui \
    libmtkshim_omx \
    libmtkshim_gps

# Display
PRODUCT_PACKAGES += \
    libion

# GPS
PRODUCT_COPY_FILES += \
    device/xiaomi/cappu/prebuilt/etc/agps_profiles_conf2.xml:system/etc/agps_profiles_conf2.xml

PRODUCT_PACKAGES += \
    libcurl

# Include explicitly to work around Facelock issues
PRODUCT_PACKAGES += \
    libprotobuf-cpp-full

# FMRadio
PRODUCT_PACKAGES += \
    libfmjni \
    FMRadio

# Filesystem management tools
PRODUCT_PACKAGES += \
    e2fsck \
    fsck.f2fs \
    mkfs.f2fs \
    make_ext4fs

# exFAT
PRODUCT_PACKAGES += \
    mount.exfat \
    fsck.exfat \
    mkfs.exfat

# NTFS
PRODUCT_PACKAGES += \
    fsck.ntfs \
    mkfs.ntfs \
    mount.ntfs

# USB
PRODUCT_PACKAGES += \
    com.android.future.usb.accessory

# Sensor Calibration
PRODUCT_PACKAGES += \
    libem_sensor_jni

# Granular Volume Steps
PRODUCT_PROPERTY_OVERRIDES += \
    ro.config.vc_call_vol_steps=14 \
    ro.config.media_vol_steps=30

# SELinux
PRODUCT_PROPERTY_OVERRIDES += \
    ro.build.selinux=1

# include other configs
include device/xiaomi/cappu/configs/permissions.mk
include device/xiaomi/cappu/configs/media.mk
include device/xiaomi/cappu/configs/wifi.mk
include device/xiaomi/cappu/configs/google_override.mk
