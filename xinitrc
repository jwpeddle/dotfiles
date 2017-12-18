xrandr --dpi 144 &
feh --bg-fill ~/.config/background.jpg
setxkbmap -option ctrl:nocaps
xbindkeys
xrdb ~/.Xresources
exec i3 -V >> ~/.i3log 2>&1
