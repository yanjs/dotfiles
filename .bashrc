#
# ~/.bashrc
#

# If not running interactively, don't do anything

echo "I load .bashrc"

[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='$? \[\e[0;92m\]\u \[\e[0;33m\]\w\[\e[0;37m\]]\$ \[\e[0m\]'

if [ -n "$XTERM_VERSION" ] ; then 
	transset-df --id "$WINDOWID" .8 >/dev/null
elif [ "$TERM" == "rxvt-unicode-256color" ] ; then
	: #transset-df --id "$WINDOWID" >/dev/null
fi
