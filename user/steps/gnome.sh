if ! gnome-extensions list | grep -q Move_Clock@rmy.pobox.com; then
    busctl --user call org.gnome.Shell.Extensions /org/gnome/Shell/Extensions \
        org.gnome.Shell.Extensions InstallRemoteExtension s 'Move_Clock@rmy.pobox.com'
fi
