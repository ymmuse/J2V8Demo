#!/usr/bin/env bash

V8_PATH=/Users/daiyangming/Desktop/2014-archive/github.com/v8/
NDK_PATH=/Users/daiyangming/Documents/2014-archive/dev-android/android-ndk-r10d

export ANDROID_NDK_ROOT=$NDK_PATH

cd $V8_PATH
make android_arm.release -j16 V=1 i18nsupport=off
