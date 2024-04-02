#!/bin/bash

export ANDROID_SDK=/c/sdk_full
export ANDROID_NDK=/e/android-ndk-r19c
export JAVA_HOME=/e/jdk-1.8

export APK_TARGET_ID=android-28
export ANDROID_SDK_ROOT_PATH=%ANDROID_SDK%
export ANDROID_NDK_ROOT_PATH=%ANDROID_NDK%

mkdir -p build-android-v8a
cd build-android-v8a
cmake -DBUILD_ANDROID=On -DANDROID_ABI=arm64-v8a \
	-DUSE_INTERCEPTOR_LIB=On -DLLVM_DIR=/E/llvm_4.0_src/llvm/build_native/install_arm64/lib/cmake/llvm \
	-G "MinGW Makefiles" ..
/E/android-ndk-r19c/prebuilt/windows-x86_64/bin/make.exe VERBOSE=1

cd ..
mkdir -p build-android-v7a
cd build-android-v7a
cmake -DBUILD_ANDROID=On -DANDROID_ABI=armeabi-v7a \
	-DUSE_INTERCEPTOR_LIB=On -DLLVM_DIR=/E/llvm_4.0_src/llvm/build_native/install_arm32/lib/cmake/llvm \
	-G "MinGW Makefiles" ..
/E/android-ndk-r19c/prebuilt/windows-x86_64/bin/make.exe VERBOSE=1
