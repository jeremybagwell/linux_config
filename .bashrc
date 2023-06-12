# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# If set, the pattern "**" used in a pathname expansion context will
# match all files and zero or more directories and subdirectories.
#shopt -s globstar

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "${debian_chroot:-}" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
    xterm-color|*-256color) color_prompt=yes;;
esac

# uncomment for a colored prompt, if the terminal has the capability; turned
# off by default to not distract the user: the focus in a terminal window
# should be on the output of commands, not on the prompt
#force_color_prompt=yes

if [ -n "$force_color_prompt" ]; then
    if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
	# We have color support; assume it's compliant with Ecma-48
	# (ISO/IEC-6429). (Lack of such support is extremely rare, and such
	# a case would tend to support setf rather than setaf.)
	color_prompt=yes
    else
	color_prompt=
    fi
fi

if [ "$color_prompt" = yes ]; then
    PS1='${debian_chroot:+($debian_chroot)}\[\033[0;30m\]\[\033[43m\]\D{%H:%M:%S}\[\033[00m\]\[\033[01;32m\]\u\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
else
    PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
fi
unset color_prompt force_color_prompt

# If this is an xterm set the title to user@host:dir
case "$TERM" in
xterm*|rxvt*)
    PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]$PS1"
    ;;
*)
    ;;
esac

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# grep options
#export GREP_OPTIONS="-s --exclude=\*~"

# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# Enable Git-Autocomplete
if [ -f ~/.git-completion.bash ]; then
    source ~/.git-completion.bash
fi

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi


######################################################

export PROJECT_ROOT='/home/kolacc1/src/stealthapplication_dmri'

# PATH
 # Reset to default so we don't end up with twenty instances of every folder in our path
setPath(){
export PATH=$(getconf PATH)

export PATH=$PATH:/sbin
export PATH=$PATH:/usr/sbin
export PATH=$PATH:/usr/local/bin
export PATH=/opt/mnav/nodejs/bin:$PATH
# export PATH=$PATH:/home/kolacc1/ccollab-cmdline
# export PATH=$PATH:/home/kolacc1/bin/
# #export PATH=$PATH:/home/kolacc1/bin/chainsaw2.1/apache-chainsaw-2.1.0-SNAPSHOT/bin
# export PATH=$PATH:/opt/mnav/lib/qt5/bin/
# export PATH=$PATH:/usr/totalview/bin/
# export PATH=$PATH:${PROJECT_ROOT}/dist/product/release/bin
# #export PATH=$PATH:/home/kolacc1/Qt/Tools/QtCreator/bin
# export PATH=$PATH:/home/kolacc1/kw/bin
# export PATH=$PATH:/home/kolacc1/git/chrisk/bin/Typora-linux-x64/
}

setPath

export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/var/mnav/lib

export QML_IMPORT_PATH=$PROJECT_ROOT/GuiFramework/qml:$QML_IMPORT_PATH
export QML2_IMPORT_PATH=$PROJECT_ROOT/GuiFramework/qml:$QML2_IMPORT_PATH

#################################
## GIT
#################################
export GIT_EDITOR=vi


#################################
## GOLANG
#################################
export GOPATH=/home/kolacc1/src/ziehmulator

#################################
## PYTHON
#################################
export PYTHONPATH=PYTHONPATH:~/lib/python

# Add nodejs to your path. Make sure to put it BEFORE $PATH, to ensure bash finds the mnav nodejs before any others you may have installed
export PATH=/opt/mnav/nodejs/bin:$PATH
 
 
# Set the prefix environment variable. This tells node where to install global packages
export NPM_CONFIG_PREFIX=~/.npm-global
 
# Add the global bin directory to your path in your .bashrc:
export PATH=$PATH:~/.npm-global/bin