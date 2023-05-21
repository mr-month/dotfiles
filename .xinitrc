
# ---- run computer-specific monitor setup if exists --------------------------
[[ -f ~/.xrandr_startup ]] && . ~/.xrandr_startup || xrandr --auto


# ---- needed for gnome-keyring to work correctly -----------------------------
dbus-update-activation-environment --all
command -v gnome-keyring-daemon > /dev/null 2>&1 \
  && gnome-keyring-daemon --start &


# ---- misc -------------------------------------------------------------------
command -v nm-applet > /dev/null 2>&1 \
  && nm-applet &

command -v redshift > /dev/null 2>&1 \
  && redshift &

command -v xscreensaver > /dev/null 2>&1 \
  && xscreensaver --no-splash &


# ---- start window manager ---------------------------------------------------
export _AWESOME_THEME_NAME="basic"
exec awesome
# exec i3
