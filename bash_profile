. ~/.bashrc
eval $(ssh-agent)
ssh-add
[[ -z $DISPLAY && $XDG_VTNR -eq 1 ]] && exec startx
