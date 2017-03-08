RIL_PATH := $(call my-dir)

ifneq ($(filter e610 p700 v1 vee3,$(LGE_MSM7X27A_DEVICE)),)
include $(call first-makefiles-under,$(RIL_PATH))
endif
