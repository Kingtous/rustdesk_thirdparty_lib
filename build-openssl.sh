export ANDROID_NDK_HOME=/opt/android-ndk-r23c/
export ANDROID_NDK_ROOT=/opt/android-ndk-r23c/
export OPENSSL_DIR=/opt/openssl-3.1.0
export ANDROID_LLVM=/opt/android-ndk-r23c/toolchains/llvm/prebuilt/linux-x86_64
# Set compiler clang, instead of gcc by default
export CC=clang
# Add toolchains bin directory to PATH
export PATH=$ANDROID_LLVM/bin:$PATH
# Set the Android API levels
export ANDROID_API=21
# Set the target architecture
# Can be android-arm, android-arm64, android-x86, android-x86 etc
for arch in android-arm ; do
    export architecture=$arch

    cd ${OPENSSL_DIR}
    ./Configure ${architecture} -D__ANDROID_API__=$ANDROID_API

    # Build
    make clean
    make -j3

    #copy
    OUTPUT_INCLUDE=/workspaces/rustdesk_thirdpary_lib/openssl/${architecture}/include
    OUTPUT_LIB=/workspaces/rustdesk_thirdpary_lib/openssl/${architecture}/lib/

    if [ $arch = "android-arm64" ]; then
        export ANDROID_OUT_LIB=/workspaces/rustdesk_thirdpary_lib/android/app/src/main/jniLibs/arm64-v8a
    else
        export ANDROID_OUT_LIB=/workspaces/rustdesk_thirdpary_lib/android/app/src/main/jniLibs/armeabi-v7a
    fi

    mkdir -p $OUTPUT_INCLUDE
    mkdir -p $OUTPUT_LIB
    cp -RL include/openssl $OUTPUT_INCLUDE
    cp libcrypto.so $OUTPUT_LIB
    cp libssl.so $OUTPUT_LIB
    # cp libcrypto.a $OUTPUT_LIB
    # cp libssl.a $OUTPUT_LIB

    # copy to android
    cp libcrypto.so $ANDROID_OUT_LIB
    cp libssl.so $ANDROID_OUT_LIB
done