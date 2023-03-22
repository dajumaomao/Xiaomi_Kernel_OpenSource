#!/bin/sh
rm -rf ./out
export ARCH=arm64 && export SUBARCH=arm64 && export DTC_EXT=dtc && export CROSS_COMPILE=${PWD}/toolchain/bin/aarch64-linux-android-
make O=out REAL_CC=${PWD}/toolchains/llvm-Snapdragon_LLVM_for_Android_6.0/prebuilt/linux-x86_64/bin/clang CLANG_TRIPLE=aarch64-linux-gnu- crux_user_defconfig && \
make -j$(nproc) O=out REAL_CC=${PWD}/toolchains/llvm-Snapdragon_LLVM_for_Android_6.0/prebuilt/linux-x86_64/bin/clang KBUILD_VERBOSE=0 CLANG_TRIPLE=aarch64-linux-gnu- 2>&1 | tee kernel.log
