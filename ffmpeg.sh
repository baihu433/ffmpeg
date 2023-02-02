#!/bin/bash
architecture=$(uname -m)
if [ "$architecture" = "aarch64" ]; then
    pushd ~/
    git clone --depth=1 https://gitee.com/baihu433/ffmpeg-arm64.git
    rm /usr/bin/ffmpeg /usr/local/bin/ffmpeg
    mv ~/ffmpeg-arm64/ffmpeg /usr/local/bin
    ln -s /usr/local/bin/ffmpeg /usr/bin/ffmpeg
    chmod +x /usr/local/bin/ffmpeg
    rm -rf ffmpeg-arm64
    rm -rf ffmpeg-arm64
    ffmpeg
    echo -e "\033[34m 安装完成 \033[0m";
    sleep 3s
elif [ "$architecture" = "x86_64" ]; then
    pushd ~/  
    git clone --depth=1 https://gitee.com/baihu433/ffmpeg-amd64.git
    rm /usr/bin/ffmpeg /usr/local/bin/ffmpeg
    mv ~/ffmpeg-amd64/ffmpeg /usr/local/bin
    ln -s /usr/local/bin/ffmpeg /usr/bin/ffmpeg
    chmod +x /usr/local/bin/ffmpeg
    rm -rf ffmpeg-amd64
    rm -rf ffmpeg-amd64
    ffmpeg
    echo -e "\033[34m 安装完成 \033[0m";
    sleep 3s
else
    echo -e "\033[34m 您是干什么的呀？ \033[0m";
    exit
fi