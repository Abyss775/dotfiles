# Get the aliases and functions
if [ -f ~/.bashrc ]; then
         . ~/.bashrc
fi

# bin user PATH
if [ -d ~/.local/bin ] ; then
    PATH=~/.local/bin:"${PATH}"
fi

# Starting X
if [ -z "${DISPLAY}" ] && [ "${XDG_VTNR}" -eq 1 ]; then
  exec startx
fi
