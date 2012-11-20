xrdb ~/.Xresources
setxkbmap -option ctrl:nocaps
xbindkeys
dropbox start
feh --bg-fill ~/background.jpg
exec i3 -V >> ~/.i3/i3log 2>&1
