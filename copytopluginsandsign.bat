@echo on
rem working directory

set workdir=%~dp0
cd "%workdir%"

copy /y sign.bat x64\Release\plugins\android\sign.bat

copy /y build-android-v8a\bin\org.renderdoc.renderdoccmd.arm64.apk x64\Release\plugins\android\
copy /y build-android-v7a\bin\org.renderdoc.renderdoccmd.arm32.apk x64\Release\plugins\android\

call x64\Release\plugins\android\sign.bat

exit /b 0
