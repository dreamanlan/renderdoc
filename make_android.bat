set ANDROID_SDK=C:\Users\dreamanlan\AppData\Local\Android\Sdk
set ANDROID_NDK=e:\android-ndk-r23b
set JAVA_HOME=e:\jdk-21

set ANDROID_SDK_ROOT_PATH=%ANDROID_SDK%
set ANDROID_NDK_ROOT_PATH=%ANDROID_NDK%
set APK_TARGET_ID=android-34

set ANDROID_CMAKE=C:\Users\dreamanlan\AppData\Local\Android\Sdk\cmake\3.22.1\bin\cmake.exe
set ANDROID_NINJA=C:\Users\dreamanlan\AppData\Local\Android\Sdk\cmake\3.22.1\bin\ninja.exe

cmake -S . -B build.Android.armeabi-v7a -DBUILD_ANDROID=On -DCMAKE_ANDROID_ARCH_ABI=armeabi-v7a -DANDROID_ABI=armeabi-v7a ^
	-DCMAKE_MAKE_PROGRAM=%ANDROID_NINJA% -DAPK_TARGET_ID=%APK_TARGET_ID% ^
	-DANDROID_SDK_ROOT_PATH=%ANDROID_SDK_ROOT_PATH% -DANDROID_NDK_ROOT_PATH=%ANDROID_NDK% ^
	-DUSE_INTERCEPTOR_LIB=On -DLLVM_DIR=E:\llvm_4.0_src\llvm\build_native\install_arm32\lib\cmake\llvm ^
	 -DCMAKE_SYSTEM_NAME=Android -DCMAKE_SYSTEM_VERSION=23 ^
	-DCMAKE_ANDROID_STL_TYPE=c++_static -DCMAKE_GENERATOR="Ninja"
cd build.Android.armeabi-v7a
%ANDROID_NINJA% -v

cd ..

cmake -S . -B build.Android.arm64-v8a -DBUILD_ANDROID=On -DCMAKE_ANDROID_ARCH_ABI=arm64-v8a -DANDROID_ABI=arm64-v8a ^
	-DCMAKE_MAKE_PROGRAM=%ANDROID_NINJA% -DAPK_TARGET_ID=%APK_TARGET_ID% ^
	-DANDROID_SDK_ROOT_PATH=%ANDROID_SDK_ROOT_PATH% -DANDROID_NDK_ROOT_PATH=%ANDROID_NDK% ^
	-DUSE_INTERCEPTOR_LIB=On -DLLVM_DIR=E:\llvm_4.0_src\llvm\build_native\install_arm64\lib\cmake\llvm ^
	-DCMAKE_SYSTEM_NAME=Android -DCMAKE_SYSTEM_VERSION=23 ^
	-DCMAKE_ANDROID_STL_TYPE=c++_static -DCMAKE_GENERATOR="Ninja"
cd build.Android.arm64-v8a
%ANDROID_NINJA% -v
cd ..
