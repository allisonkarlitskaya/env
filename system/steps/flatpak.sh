if flatpak remote-list | grep fedora; then
    flatpak remote-delete fedora
fi

if flatpak remote-list | grep 'flathub.*filter'; then
    flatpak remote-delete flathub
fi

flatpak remote-add --system --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
flatpak install --system $(<flatpak-packages)
