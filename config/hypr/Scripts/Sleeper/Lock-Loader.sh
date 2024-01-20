#!/bin/bash

sh ~/.config/hypr/mpvpaper/MPV_PAPER.sh STOP

#Vanilla-Swaylock:
play '~/.config/hypr/Files/Audio/SFX/LogOff.wav' & swaylock -i ~/.config/hypr/LockImage/Images/LoadSave.png --indicator-idle-visible --indicator-radius 100 --indicator-thickness 35 --ring-color 736ced --key-hl-color d4c1ec --line-color 00000000 --inside-color 00000088 --separator-color 00000000; play '~/.config/hypr/Files/Audio/SFX/LogOn.wav' & sh ~/.config/hypr/mpvpaper/MPV_PAPER.sh