#!/bin/env bash

# generate a random wallpaper
wallpaper=$HOME/.wallpapers/$(ls $HOME/.wallpapers/| shuf -n1)

# set the background 
feh --bg-fill $wallpaper

# use the generated wallpaper to create a colorscheme
if [[ ! $(wal -nq -i $wallpaper) ]] 
then
  wallpaper=$HOME/.wallpapers/$(ls $HOME/.wallpapers/| shuf -n1)
  wal -nq -i $wallpaper
fi

# start the emacs daemon
emacs --daemon&
