xrandr --dpi 144 &
feh --bg-fill --no-screen-clip ~/.config/background.jpg
setxkbmap -option ctrl:nocaps
xbindkeys
xrdb -merge -I$HOME ~/.Xresources
exec i3 -V >> ~/.i3log 2>&1
