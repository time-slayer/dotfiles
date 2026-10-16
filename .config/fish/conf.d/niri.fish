# Auto start Niri on tty1
if status is-login
    if test -z "$DISPLAY"; and test "$XDG_VTNR" = 1
        mkdir -p ~/.cache
        exec niri-session -l &>~/.cache/niri.log
    end
end
