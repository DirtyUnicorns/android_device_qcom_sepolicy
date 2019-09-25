# Board specific SELinux policy variable definitions.
BOARD_SEPOLICY_DIRS += \
    device/qcom/sepolicy-legacy/vendor/common \
    device/qcom/sepolicy-legacy/vendor/ssg \
    device/qcom/sepolicy-legacy/timeservice \
    device/qcom/sepolicy-legacy/vendor/common/sysmonapp

ifeq ($(TARGET_SEPOLICY_DIR),)
BOARD_SEPOLICY_DIRS += device/qcom/sepolicy-legacy/vendor/$(TARGET_BOARD_PLATFORM)
else
BOARD_SEPOLICY_DIRS += device/qcom/sepolicy-legacy/vendor/$(TARGET_SEPOLICY_DIR)
endif

ifneq (,$(filter userdebug eng, $(TARGET_BUILD_VARIANT)))
BOARD_SEPOLICY_DIRS += \
    device/qcom/sepolicy-legacy/vendor/test
endif

ifneq (,$(filter 24 25 26 27, $(PRODUCT_SHIPPING_API_LEVEL)))
BOARD_SEPOLICY_DIRS += \
    device/qcom/sepolicy-legacy/vendor/ota/$(TARGET_BOARD_PLATFORM)
endif

BOARD_PLAT_PUBLIC_SEPOLICY_DIR += \
    device/qcom/sepolicy-legacy/public

BOARD_PLAT_PRIVATE_SEPOLICY_DIR += \
    device/qcom/sepolicy-legacy/private
