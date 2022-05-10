
xrandr --auto
# TODO: make this more general - call script that is specific for each computer??
xrandr --output eDP-1-1 --mode 1920x1080
# autorandr --change

redshift &

xscreensaver --no-splash &

# exec i3
export _AWESOME_THEME_NAME="basic"
exec awesome
