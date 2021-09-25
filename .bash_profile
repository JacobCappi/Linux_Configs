#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc

# Getting git information in branch
parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
export PS1="${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00;35m\]\$(parse_git_branch)\[\033[00m\] \$ "

export EDITOR="vim"
export VISUAL="vim"
export TERMINAL="st"
export READER="zathura"
export BROWSER="firefox"


