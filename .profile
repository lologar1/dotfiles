# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi

#fix screen
bash .screenlayout/default.sh

#remap caps to escape
setxkbmap -option caps:escape

#remap right control to left alt (or is it right ? either way seems to work...) for model M
#setxkbmap -option ctrl:rctrl_ralt

#compose key
setxkbmap -option compose:lwin
#setxkbmap -option compose:rctrl

# Created by `pipx` on 2025-05-31 20:14:58
export PATH="$PATH:/home/lzg/.local/bin"
