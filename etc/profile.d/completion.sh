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

complete -C `type -p terraform` terraform

# [[ -e "/usr/local/Cellar/oci-cli/2.11.1/libexec/lib/python3.7/site-packages/oci_cli/bin/oci_autocomplete.sh" ]] && source "/usr/local/Cellar/oci-cli/2.11.1/libexec/lib/python3.7/site-packages/oci_cli/bin/oci_autocomplete.sh"
