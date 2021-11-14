LOCAL_PATH := $(call my-dir)
include $(LOCAL_PATH)/../common.mk
include $(CLEAR_VARS)

LOCAL_MODULE                  := libqdutils
LOCAL_PROPRIETARY_MODULE      := true
LOCAL_MODULE_TAGS             := optional
LOCAL_HEADER_LIBRARIES        := display_headers generated_kernel_headers
LOCAL_SHARED_LIBRARIES        := $(common_libs) libui libbinder libqservice
LOCAL_CFLAGS                  := $(common_flags) -DLOG_TAG=\"qdutils\" -Wno-sign-conversion -Wno-float-conversion
LOCAL_SRC_FILES               := profiler.cpp mdp_version.cpp \
                                 idle_invalidator.cpp \
                                 comptype.cpp qd_utils.cpp \
                                 cb_utils.cpp display_config.cpp \
                                 cb_swap_rect.cpp
include $(BUILD_SHARED_LIBRARY)

include $(CLEAR_VARS)

LOCAL_HEADER_LIBRARIES        := display_headers generated_kernel_headers
LOCAL_SHARED_LIBRARIES          := liblog libcutils
LOCAL_SRC_FILES                 := qdMetaData.cpp
LOCAL_CFLAGS                    := $(common_flags)
LOCAL_CFLAGS                    += -DLOG_TAG=\"DisplayMetaData\" -Wno-sign-conversion
LOCAL_MODULE_TAGS               := optional
LOCAL_MODULE                    := libqdMetaData
LOCAL_PROPRIETARY_MODULE        := true
include $(BUILD_SHARED_LIBRARY)

