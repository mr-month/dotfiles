#!/usr/bin/env bash

function run {
  if ! pgrep -f $1 ;
  then
    $@&
  fi
}

# Alt-Shift will toggle between "us" and "cz(qwerty)" layouts
run setxkbmap -layout "us,cz(qwerty)" -option "grp:alt_shift_toggle"
