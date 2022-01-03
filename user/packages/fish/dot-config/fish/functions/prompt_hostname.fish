function prompt_hostname
    if test -f /run/.containerenv
        sed -n 's/^name="\(.*\)"$/\1/p' /run/.containerenv
    else
        string replace "\..*" "" $hostname
    end
end
