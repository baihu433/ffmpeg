#!/bin/bash
function one()
{
    cat <<eof
    
 ****************************************************************
                      ffmpeg安装程序                 
                      
       1.安装ffmpeg_ARM64            2.安装ffmpeg_AMD64 

       手机选择1                      电脑选择2

                       0.退出安装程序
                        
*****************************************************************
eof
}
function num()													#选项
{
    read -p "请输入您需要操作的项目: " number
    case $number in
        1)
            ffmpeg_arm
            ;;
        2)
            ffmpeg_x86_64
            ;;
        0)
            exit 0
            ;;

    esac
}
function ffmpeg_arm()
{
        pushd ~/
        git clone https://gitee.com/baihu433/ffmpeg-arm64.git
        mv ~/ffmpeg-arm64/ffmpeg /usr/local/bin
        ln -s /usr/local/bin/ffmpeg /usr/bin/ffmpeg
        chmod +x /usr/local/bin/ffmpeg
        ffmpeg
        echo '安装完成'
        exit 0
}
function ffmpeg_x86_64()
{
        pushd ~/  
        git clone https://gitee.com/baihu433/ffmpeg-amd6.git
        mv ~/ffmpeg-amd64/ffmpeg /usr/local/bin
        ln -s /usr/local/bin/ffmpeg /usr/bin/ffmpeg
        chmod +x /usr/local/bin/ffmpeg
        ffmpeg
        echo '安装完成'
        exit 0
}
function  main()
{
    while true
    do
        one
        num
    done
}
main