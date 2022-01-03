# anaconda hardcodes the ntp servers it finds at install, which
# is a pretty bad approach for a laptop.  restore the default.
cp -t /etc -Zdv /usr/etc/chrony.conf

# change the default bluetooth name to match the hostname
cp -t /etc/bluetooth -Zdv etc/bluetooth/main.conf

# disable fedora-chromium-config
cp -t /etc/tmpfiles.d -Zdv etc/tmpfiles.d/fedora-chromium-config-tmpfiles.conf
rm -fv /etc/{chromium,opt/chrome}/policies/managed/00_gssapi.json
test -d /etc/opt/chrome/managed && rmdir /etc/opt/chrome/managed

# keyboard layout
cp -t /etc/X11/xorg.conf.d -Zdv etc/X11/xorg.conf.d/00-keyboard.conf

# use systemd stub resolver in resolv.conf
cp -t /etc -Zdv etc/resolv.conf
