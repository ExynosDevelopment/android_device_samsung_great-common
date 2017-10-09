# Copyright (C) Sascha Nesterovic <nesterovic5@gmail.com>

LOCAL_PATH := $(call my-dir)

ifneq ($(filter exynos8895, $(TARGET_SOC)),)

include $(call all-makefiles-under,$(LOCAL_PATH))

endif
