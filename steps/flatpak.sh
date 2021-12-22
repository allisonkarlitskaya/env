flatpak remote-delete fedora || true
flatpak remote-add --system --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
flatpak install --system $(<flatpak-packages)
