sleep 1

# keys
# setxkbmap -variant colemak
xbindkeys
setxkbmap -option caps:ctrl_modifier
xcape -e 'Caps_Lock=Escape'
xset b off
xset b 0 0 0
# enable APL
setxkbmap -layout us,apl -variant colemak,dyalog -option grp:switch

# input method
# export GTK_IM_MODULE=ibus
# export QT_IM_MODULE=ibus
# export XMODIFIERS=@im=ibus
# ibus-daemon -dx
export GTK_IM_MODULE=fcitx
export QT_IM_MODULE=fcitx
export XMODIFIERS="@im=fcitx"
fcitx &

# show status
#sh ~/.local/show-status-loop.sh &

#set resources, e.g. fonts
xrdb -merge $HOME/.Xresources

# set transparency
xcompmgr -c &

# set wallpaper
sh ~/.local/wallpaper.sh &

# keynav

keynav &

#exec dwm

exec i3

#exec startplasma-x11

