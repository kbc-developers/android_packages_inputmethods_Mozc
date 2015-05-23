LOCAL_PATH:= $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE_TAGS := optional

LOCAL_SRC_FILES := \
        $(call all-java-files-under, src)

LOCAL_PACKAGE_NAME := Mozc

LOCAL_STATIC_JAVA_LIBRARIES := \
	mozc_guava mozc_jsr305 mozc_android-support-v13 mozc_protobuf

LOCAL_JNI_SHARED_LIBRARIES := libmozc

LOCAL_PROGUARD_ENABLED := disabled

#LOCAL_AAPT_INCLUDE_ALL_RESOURCES := true

include $(BUILD_PACKAGE)

include $(CLEAR_VARS)

LOCAL_PREBUILT_STATIC_JAVA_LIBRARIES := \
    mozc_guava:libs/guava.jar \
    mozc_jsr305:libs/jsr305.jar \
    mozc_android-support-v13:libs/android-support-v13.jar \
    mozc_protobuf:libs/protobuf.jar
include $(BUILD_MULTI_PREBUILT)

include $(call all-makefiles-under,$(LOCAL_PATH))
