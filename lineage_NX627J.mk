# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_p.mk)

#Inherit from nx627j device
$(call inherit-product, device/nubia/NX627J/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := lineage_NX627J
PRODUCT_DEVICE := NX627J
PRODUCT_BRAND := Nubia
PRODUCT_MODEL := NX627J
PRODUCT_MANUFACTURER := Nubia

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME="NX627J" \
    TARGET_DEVICE="NX627J"

PRODUCT_GMS_CLIENTID_BASE := android-nubia

BUILD_FINGERPRINT := \
 	"nubia/NX627J/NX627J:11/RKQ1.200826.002/nubia.20201120.231859:user/release-keys"
