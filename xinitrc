eval $(ssh-agent) 2>/dev/null
ssh-add 2>/dev/null
setxkbmap -option ctrl:nocaps
xbindkeys
feh --bg-fill ~/background.jpg
xrdb ~/.Xresources
exec i3 -V >> ~/.i3/i3log 2>&1
