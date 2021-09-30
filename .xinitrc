
xrandr --auto
# autorandr --change

redshift &

xscreensaver &

# Alt-Shift will toggle between "us" and "cz(qwerty)" layouts
setxkbmap -layout "us,cz(qwerty)" -option "grp:alt_shift_toggle"

# exec i3
exec awesome
