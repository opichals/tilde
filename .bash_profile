alias ll='ls -lFG'

export ARCH=osx

# root of the git install
export GIT_ROOT=/usr/local/git

# set /usr/local/bin (machine custom executables)
# and ~/bin (user custom executables) PATH
export PATH=/usr/local/bin:$PATH:$HOME/bin

# my favourite editor
export EDITOR=vi

# include all the profile shell scripts
for f in ~/etc/profile.d/*.sh; do
    source $f
done
