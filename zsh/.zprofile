if [[ ! $DISPLAY && $XDG_VTNR -eq 1 ]]; then
    exec startx -- -ardelay 200
fi
