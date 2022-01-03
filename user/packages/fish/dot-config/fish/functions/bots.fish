function bots
    if git -C ~/src/bots/main status --porcelain | grep ''
        echo ~/src/bots/main: not clean >&2
        return 1
    end

    git -C ~/src/bots/main pull || return 1
    ln -sfTv ~/src/bots/main ~/.config/cockpit-dev/bots || return 1

    if test -x tools/make-bots
        tools/make-bots || return 1
    end
end
