ifeq ($(TARGET_PROVIDES_AUDIO_EFFECTS),true)

LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)

LOCAL_MODULE_TAGS := optional

LOCAL_SRC_FILES := $(call all-java-files-under, src)

LOCAL_JAVA_LIBRARIES := framework

LOCAL_PACKAGE_NAME := MusicFX

LOCAL_PRIVILEGED_MODULE := true

LOCAL_OVERRIDES_PACKAGES := DSPManager

LOCAL_CERTIFICATE := platform

include $(BUILD_PACKAGE)

endif
