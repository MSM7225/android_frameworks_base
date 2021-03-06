LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)

LOCAL_SRC_FILES:=                     \
        ColorConverter.cpp            \
        SoftwareRenderer.cpp

LOCAL_C_INCLUDES := \
        $(TOP)/frameworks/base/include/media/stagefright/openmax \
        $(TOP)/hardware/msm7k

ifeq ($(BOARD_USES_QCOM_HARDWARE),true)
        LOCAL_C_INCLUDES += $(TOP)/vendor/qcom/opensource/omx/mm-core/omxcore/inc
        LOCAL_C_INCLUDES += $(TOP)/hardware/qcom/display/libgralloc
endif

ifeq ($(BOARD_USES_QCOM7x25_HARDWARE),true)
        LOCAL_C_INCLUDES += $(TOP)/device/huawei/u8160/mm-core/omxcore/inc
        LOCAL_C_INCLUDES += $(TOP)/device/huawei/u8160/libgralloc
endif

LOCAL_MODULE:= libstagefright_color_conversion

include $(BUILD_STATIC_LIBRARY)
