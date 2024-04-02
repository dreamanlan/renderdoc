@echo on
rem working directory

set workdir=%~dp0
cd "%workdir%"

copy /y sign.bat "C:\Program Files\RenderDoc\plugins\android\sign.bat"

copy /y build-android-v8a\bin\org.renderdoc.renderdoccmd.arm64.apk "C:\Program Files\RenderDoc\plugins\android\"
copy /y build-android-v7a\bin\org.renderdoc.renderdoccmd.arm32.apk "C:\Program Files\RenderDoc\plugins\android\"

call "C:\Program Files\RenderDoc\plugins\android\sign.bat"

exit /b 0
