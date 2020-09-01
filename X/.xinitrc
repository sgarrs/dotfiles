xrdb -merge ~/.Xresources &
xmodmap -e "pointer = 1 2 3" &
xset r rate 200 50 &
exec i3 --shmlog-size=26214400
