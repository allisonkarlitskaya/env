test -d ~/src || btrfs subvolume create ~/src
test "$(stat -c%D ~/src)" != "$(stat -c%D ~)"

systemctl --user daemon-reload  # we don't have a hook for this yet
systemctl --user enable --now src-backup.service

worktree_repos='
  github:cockpit-project/bots
  github:cockpit-project/cockpit
  github:cockpit-project/cockpit-machines
  github:cockpit-project/cockpit-podman
  github:cockpit-project/starter-kit
  github:osbuild/cockpit-composer
'

reference_repos='
  github:linux-pam/linux-pam
  github:openssh/openssh-portable
  gnome:glib
  gnome:glib-networking
  https://sourceware.org/git/glibc.git
'

for repo in ${worktree_repos}; do
    repodir="${repo##*:}"
    srcdir="${HOME}/src/${repodir##*/}"
    if [ ! -d "${srcdir}" ]; then
        mkdir -p "${srcdir}"
        git clone "${repo}" "${srcdir}/main"
        git -C "${srcdir}/main" remote add lis "github:allisonkarlitskaya/${repo#*/}"
    fi
done

for repo in ${reference_repos}; do
    repodir="${repo##*:}"
    srcdir="${HOME}/src/${repodir##*/}"
    if [ ! -d "${srcdir}" ]; then
        git clone "${repo}" "${srcdir}"
    fi
done
