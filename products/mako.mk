# Include device overlays
PRODUCT_PACKAGE_OVERLAYS += vendor/N-4/overlay/mako

# Include N-4 configs
include vendor/N-4/configs/common.mk
include vendor/N-4/configs/bootanimation.mk

# Inherit AOSP device configuration
$(call inherit-product, device/lge/mako/full_mako.mk)

# Override AOSP build properties
PRODUCT_NAME := mako
PRODUCT_BRAND := Google
PRODUCT_MODEL := Nexus 4
PRODUCT_MANUFACTURER := LGE

PRODUCT_RESTRICT_VENDOR_FILES := false

PRODUCT_PROPERTY_OVERRIDES += \
	keyguard.no_require_sim=true \

PRODUCT_PROPERTY_OVERRIDES += \
	af.fast_track_multiplier=1 \
	ro.build.expect.bootloader=MAKOZ30f \
	ro.build.expect.baseband=M9615A-CEFWMAZM-2.0.1701.07 \
	ro.product.first_api_level=17 \

PRODUCT_PROPERTY_OVERRIDES += \
	media.stagefright.legacyencoder=1 \

PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
	ro.product.name=$(PRODUCT_NAME) \

PRODUCT_PROPERTY_OVERRIDES += \
	ro.telephony.default_network=3 \
	ro.ril.def.preferred.network=3 \

# Nexus 4 has no gesture sensor
PRODUCT_PROPERTY_OVERRIDES += \
	gesture.disable_camera_launch=1 \

PRODUCT_PROPERTY_OVERRIDES += \
	ro.hwui.texture_cache_size=48 \
	ro.hwui.layer_cache_size=32 \
	ro.hwui.r_buffer_cache_size=4 \
	ro.hwui.path_cache_size=24 \
	ro.hwui.gradient_cache_size=1 \
	ro.hwui.drop_shadow_cache_size=5 \
	ro.hwui.texture_cache_flushrate=0.5 \
	ro.hwui.text_small_cache_width=1024 \
	ro.hwui.text_small_cache_height=1024 \
	ro.hwui.text_large_cache_width=2048 \
	ro.hwui.text_large_cache_height=1024 \

