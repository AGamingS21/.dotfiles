# ------------------------------------------------------
# init pywal with default wallpaper
# ------------------------------------------------------
_writeLogHeader "Pywal"
if [ ! -f ~/.cache/wal/colors-hyprland.conf ]; then
    wal -ei ~/.config/wallpapers/hyprland.jpg
    _writeLog 1 "Pywal and templates activated."
else
    _writeLog 0 "Pywal already activated."
fi