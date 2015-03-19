# Copyright (C) 2009 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
LOCAL_PATH := $(call my-dir)

LOCAL_MODULE	:= v8_base
LOCAL_SRC_FILES := ../third_party/v8/lib/libv8_base.a
include $(PREBUILT_STATIC_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE	:= v8_nosnapshot
LOCAL_SRC_FILES :=  ../third_party/v8/lib/libv8_nosnapshot.a
include $(PREBUILT_STATIC_LIBRARY)


include $(CLEAR_VARS)
LOCAL_MODULE    := j2v8_android
LOCAL_SRC_FILES := com_eclipsesource_v8_V8Impl.cpp
LOCAL_C_INCLUDES := $(LOCAL_PATH)/../third_party/v8/include $(LOCAL_PATH)/../third_party/v8/

LOCAL_CFLAGS += -Wall -Wno-unused-function -Wno-unused-variable -O3 -funroll-loops -ftree-vectorize -ffast-math -fpermissive
LOCAL_STATIC_LIBRARIES := v8_base v8_nosnapshot

LOCAL_LDLIBS += -L$(SYSROOT)/usr/lib -llog
include $(BUILD_SHARED_LIBRARY)
