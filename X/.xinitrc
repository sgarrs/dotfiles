xrdb -merge ~/.Xresources &
xmodmap -e "pointer = 3 2 1" &
xset r -rate 250 100 &
exec i3
