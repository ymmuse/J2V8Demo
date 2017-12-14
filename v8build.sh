#!/usr/bin/env bash

V8_PATH=$(dirname $(readlink -f $0))
NDK_PATH=YOUR NDK PATH

export ANDROID_NDK_ROOT=$NDK_PATH

cd $V8_PATH
make android_arm.release -j16 V=1 i18nsupport=off
