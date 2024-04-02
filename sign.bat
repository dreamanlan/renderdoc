set workdir=%~dp0

cd %workdir%

java -jar apksigner.jar sign --ks renderdoc.keystore --ks-key-alias=rdocandroidkey --key-pass pass:android --ks-pass pass:android org.renderdoc.renderdoccmd.arm32.apk
java -jar apksigner.jar sign --ks renderdoc.keystore --ks-key-alias=rdocandroidkey --key-pass pass:android --ks-pass pass:android org.renderdoc.renderdoccmd.arm64.apk
