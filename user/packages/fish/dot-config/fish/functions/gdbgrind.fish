function gdbgrind
    while gdb -ex='set confirm on' -ex=run -ex=quit --args $argv
        :
    end
end
