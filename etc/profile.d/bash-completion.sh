for f in /usr/local/etc/bash_completion.d/*; do
    source $f
done


# want to have the branch name in the PS1 prompt?
#
#PS1='\h:\W$(__git_ps1 "(%s)") \u\$ '
