#!/bin/bash

export ANDROID_SDK=/c/sdk_full
export ANDROID_NDK=/d/android-ndk-r23b
export JAVA_HOME=/f/jdk-1.8

export APK_TARGET_ID=android-28
export ANDROID_SDK_ROOT_PATH=%ANDROID_SDK%
export ANDROID_NDK_ROOT_PATH=%ANDROID_NDK%

export PATH=/C/Program\ Files/CMake/bin:/F/jdk-1.8/bin:/C/Strawberry/c/bin:/D/Git/mingw64/bin:/D/Git/usr/bin:/D/Git/bin:/C/windows/system32:/C/windows:/C/windows/System32/Wbem:/C/windows/System32/WindowsPowerShell/v1.0:/C/windows/System32/OpenSSH

mkdir -p build-android-v8a
cd build-android-v8a
cmake -DBUILD_ANDROID=On -DANDROID_ABI=arm64-v8a \
	-DUSE_INTERCEPTOR_LIB=On -DLLVM_DIR=/f/llvm_40_src/llvm/build_native/install_arm64/lib/cmake/llvm \
	-G "MinGW Makefiles" ..
/d/android-ndk-r23b/prebuilt/windows-x86_64/bin/make.exe VERBOSE=1

cd ..
mkdir -p build-android-v7a
cd build-android-v7a
cmake -DBUILD_ANDROID=On -DANDROID_ABI=armeabi-v7a \
	-DUSE_INTERCEPTOR_LIB=On -DLLVM_DIR=/f/llvm_40_src/llvm/build_native/install_arm32/lib/cmake/llvm \
	-G "MinGW Makefiles" ..
/d/android-ndk-r23b/prebuilt/windows-x86_64/bin/make.exe VERBOSE=1
