#!/bin/bash
case $(arch) in
  aarch64|arm64)
    ffmpeg=arm64
    ;;
  amd64|x86_64)
    ffmpeg=amd64
    ;;
  arm|armhf|armv8l)
    ffmpeg=armhf
    ;;
  i686)
    ffmpeg=i686
    ;;
  armel)
    ffmpeg=armel
    ;;
  *)
    echo -e "\033[31m暂不支持您的设备\033[0m"
    exit
    ;;
esac
mv ffmpeg /usr/local/bin/ffmpeg
mv ffprobe /usr/local/bin/ffprobe
chmod +x /usr/local/bin/ffmpeg
chmod +x /usr/local/bin/ffprobe
if [ -e /usr/local/bin/ffmpeg ] && [ -e /usr/local/bin/ffprobe ]
then
ffmpeg
echo
echo -e "\033[36m安装完成\033[0m"
else
echo -e "\033[31m安装失败\033[0m"
fi