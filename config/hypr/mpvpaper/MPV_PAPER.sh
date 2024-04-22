#!/bin/bash

killall mpvpaper

if [[ -z $1 ]];
then #No Parameter == WallON!
    mpvpaper -o "--loop input-ipc-server=/tmp/mpv-socket --vo=vulkan" DP-1 ~/.config/hypr/Files/Video/Wallpaper/Lain_Game_Wall.mp4 &
    mpvpaper -o "--loop input-ipc-server=/tmp/mpv-socket --vo=vulkan" DP-3 ~/.config/hypr/Files/Video/Wallpaper/Lain_Game_Wall_Rotatded.mp4 &
    mpvpaper -o "--loop input-ipc-server=/tmp/mpv-socket --vo=vulkan" HDMI-A-1 ~/.config/hypr/Files/Video/Wallpaper/Lain_Game_Wall_Rotatded.mp4 &
else #Parameter == Wall OFF!
    killall mpvpaper
fi