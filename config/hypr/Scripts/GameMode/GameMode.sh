#!/usr/bin/env sh

# - Wallpaper-CleanUp:
sh ~/.config/hypr/mpvpaper/MPV_PAPER.sh STOP

# - Getting if Animations are ON:
HYPRGAMEMODE=$(hyprctl getoption animations:enabled | awk 'NR==2{print $2}')

# - PerformanceMode (If Animations are on OR any Argument were passed):
#        keyword misc:vrr 0;\
#        keyword misc:vfr 0;\
#        keyword misc:vfr false"
if [ ! $# -eq 0 ] || [ "$HYPRGAMEMODE" = 1 ] ; then
    hyprctl --batch "\
        keyword animations:enabled 0;\
        keyword decoration:drop_shadow 0;\
        keyword general:gaps_in 0;\
        keyword general:gaps_out 0;\
        keyword decoration:rounding 0;\
        keyword general:border_size 0;\
        keyword decoration:active_opacity 1;\
        keyword decoration:inactive_opacity 1;\
        keyword decoration:fullscreen_opacity 1;\
        keyword decoration:blur:enabled 0;\
        keyword decoration:blur:enabled no"
    exit
fi

# - Reset:
hyprctl reload

# - Wallpaper:
sleep 1
sh ~/.config/hypr/mpvpaper/MPV_PAPER.sh