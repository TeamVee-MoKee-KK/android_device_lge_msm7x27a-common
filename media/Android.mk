ifeq ($(call my-dir),$(call project-path-for,qcom-media))

ifneq ($(filter msm7x27a,$(TARGET_BOARD_PLATFORM)),)

include $(call all-subdir-makefiles)

endif

endif
