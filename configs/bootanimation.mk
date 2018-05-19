ifneq ($(filter mako,$(TARGET_PRODUCT)),)
    PRODUCT_COPY_FILES += \
        vendor/N-4/prebuilt/bootanimation/bootanimation720p.zip:system/media/bootanimation.zip 

endif
