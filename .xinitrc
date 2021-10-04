
xrandr --auto
# autorandr --change

redshift &

xscreensaver --no-splash &

# Alt-Shift will toggle between "us" and "cz(qwerty)" layouts
setxkbmap -layout "us,cz(qwerty)" -option "grp:alt_shift_toggle"

# exec i3
export _AWESOME_THEME_NAME="basic"
exec awesome
