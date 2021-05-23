if [ "$(ps -h -o comm= -p $$)" = "zsh" ]; then
    autoload -U compinit && compinit
    autoload -U bashcompinit && bashcompinit

    for f in /usr/local/etc/zsh_completion.d/*; do
       source $f
    done
else
    for f in /usr/local/etc/bash_completion.d/*; do
        source $f
    done
fi

