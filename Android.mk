LOCAL_PATH := $(call my-dir)

# Build a jtorctl.jar to use for host side tests
#include $(CLEAR_VARS)
#
#LOCAL_SRC_FILES := $(call all-java-files-under, .)
#
#LOCAL_MODULE := jtorctl
#LOCAL_MODULE_TAGS := optional
#
#include $(BUILD_HOST_JAVA_LIBRARY)

# Build a jtorctl.jar to use on device
include $(CLEAR_VARS)

LOCAL_SRC_FILES := $(call all-java-files-under, .)
LOCAL_SDK_VERSION := 8
LOCAL_MODULE := jtorctllib
LOCAL_MODULE_TAGS := optional

include $(BUILD_JAVA_LIBRARY)

