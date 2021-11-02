if [ -n "$ZSH_VERSION" ]; then
    autoload -U compinit && compinit
    autoload -U bashcompinit && bashcompinit

    [[ -e $HOMEBREW_PREFIX/etc/zsh_completion.d ]] && for f in $HOMEBREW_PREFIX/etc/zsh_completion.d/*; do
       source $f
    done
else
    [[ -e $HOMEBREW_PREFIX/etc/bash_completion.d ]] && for f in $HOMEBREW_PREFIX/etc/bash_completion.d/*; do
        source $f
    done
fi

