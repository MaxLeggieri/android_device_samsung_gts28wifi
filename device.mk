LOCAL_PATH := device/samsung/gts28wifi

###########################################################
### RAMDISK
###########################################################

PRODUCT_PACKAGES += \
    init.baseband.rc

###########################################################
### AUDIO
###########################################################

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/audio/mixer_paths.xml:system/etc/mixer_paths.xml \
    $(LOCAL_PATH)/configs/audio/mixer_paths_0.xml:system/etc/mixer_paths_0.xml

###########################################################
### BLUETOOTH
###########################################################

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/bluetooth/bt_vendor.conf:system/etc/bluetooth/bt_vendor.conf

# call the proprietary setup
$(call inherit-product-if-exists, vendor/samsung/gts28wifi/gts28wifi-vendor.mk)

# call the ANT setup
$(call inherit-product, external/ant-wireless/build/ant-wireless.mk)