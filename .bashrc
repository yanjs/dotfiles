#
# ~/.bashrc
#

# If not running interactively, don't do anything

echo "I load .bashrc"

[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

if [ -n "$XTERM_VERSION" ] ; then 
	transset-df --id "$WINDOWID" .8 >/dev/null
elif [ "$TERM" == "rxvt-unicode-256color" ] ; then
	: #transset-df --id "$WINDOWID" >/dev/null
fi
