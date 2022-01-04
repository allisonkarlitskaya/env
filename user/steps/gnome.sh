dconf load / <<EOF
[org/gnome/software]
download-updates=false
download-updates-notify=false
first-run=false

[org/gnome/desktop/search-providers]
disabled=['org.gnome.Software.desktop']

[org/gnome/desktop/input-sources]
per-window=false
sources=[('xkb', 'us+euro')]
xkb-options=['lv3:ralt_switch', 'compose:caps', 'esperanto:qwerty']

[org/gnome/desktop/wm/keybindings]
close=['<Super>w']
switch-applications=@as []
switch-applications-backward=@as []
switch-windows=['<Alt>Tab']
switch-windows-backward=['<Shift><Alt>Tab']

[org/gnome/desktop/interface]
clock-show-weekday=true

[org/gnome/desktop/calendar]
show-weekdate=true
EOF

if ! gnome-extensions list | grep -q Move_Clock@rmy.pobox.com; then
    busctl --user call org.gnome.Shell.Extensions /org/gnome/Shell/Extensions \
        org.gnome.Shell.Extensions InstallRemoteExtension s 'Move_Clock@rmy.pobox.com'
fi
