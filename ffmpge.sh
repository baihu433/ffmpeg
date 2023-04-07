#!/bin/bash
#https://johnvansickle.com/ffmpeg/releases/ffmpeg-release-armel-static.tar.xz
#https://johnvansickle.com/ffmpeg/releases/ffmpeg-release-armhf-static.tar.xz
#https://johnvansickle.com/ffmpeg/releases/ffmpeg-release-arm64-static.tar.xz
#https://johnvansickle.com/ffmpeg/releases/ffmpeg-release-i686-static.tar.xz
#https://johnvansickle.com/ffmpeg/releases/ffmpeg-release-amd64-static.tar.xz
case $(arch) in
  aarch64|arm64)
    curl -o ffmpeg.tar.xz https://johnvansickle.com/ffmpeg/releases/ffmpeg-release-arm64-static.tar.xz
  ;;
  amd64|x86_64)
    curl -o ffmpeg.tar.xz https://johnvansickle.com/ffmpeg/releases/ffmpeg-release-amd64-static.tar.xz
  ;;
  armhf)
    curl -o ffmpeg.tar.xz https://johnvansickle.com/ffmpeg/releases/ffmpeg-release-armhf-static.tar.xz
  ;;
  i686)
    curl -o ffmpeg.tar.xz https://johnvansickle.com/ffmpeg/releases/ffmpeg-release-i686-static.tar.xz
  ;;
  armel)
    curl -o ffmpeg.tar.xz https://johnvansickle.com/ffmpeg/releases/ffmpeg-release-armel-static.tar.xz
  ;;
  *)
  echo -e "\033[31m暂不支持您的设备\033[0m"
  exit
  ;;
esac
 xz -d ffmpeg.tar.xz
 mkdir ffmpeg
 tar -xvf ffmpeg.tar -C ffmpeg
 path=$(ls ffmpeg)
 rm -rf /usr/local/bin/ffmpeg /usr/local/bin/ffmpeg &>/dev/null
 rm -rf /usr/local/bin/ffmpeg /usr/local/bin/ffmpeg &>/dev/null
 mv ffmpeg/${path}/ffmpeg /usr/local/bin/ffmpeg
 mv ffmpeg/${path}/ffprobe /usr/local/bin/ffprobe
 chmod +x /usr/local/bin/ffmpeg
 chmod +x /usr/local/bin/ffprobe
 rm -rf ffmpeg ffmpeg.tar