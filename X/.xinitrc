xrdb -merge ~/.Xresources &
xmodmap -e "pointer = 3 2 1" &
xset r -rate 250 100 &
exec i3 --shmlog-size=26214400
