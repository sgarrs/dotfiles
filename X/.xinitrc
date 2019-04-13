xmodmap -e "pointer = 3 2 1 6 7 8 9 10 4 5" &
xrdb -merge ~/.Xresources &
exec i3
