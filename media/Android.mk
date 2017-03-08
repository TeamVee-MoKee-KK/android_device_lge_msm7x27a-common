ifneq ($(filter e610 p700 v1 vee3,$(LGE_MSM7X27A_DEVICE)),)

ifneq ($(filter msm7x27a,$(TARGET_BOARD_PLATFORM)),)

include $(call all-subdir-makefiles)

endif

endif
