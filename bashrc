# Make it easy to find executables
PATH=$PATH:~/bin
PATH=$PATH:/usr/local/bin

# Make it easier to work with git
source ~/.git-completion.bash 
alias gs="git status"

# Have a very long memory
HISTSIZE=10000
HISTFILESIZE=200000

function b5 {
    ssh -L 8008:127.0.0.1:8501 -L 7007:127.0.0.1:8502 miller_john@b5.millennium.berkeley.edu -t "tmux a -t sess || tmux new -s sess"
}

# Use Python3 by default.
# rlwrap is a readline wrapper that allows keyboard editing of text input
# If we're using python3 by default, we also want to use the correct pip by default.
#alias python="rlwrap python3"
#alias pip="pip3"

alias ll="ls - alrth"
alias ..="cd .."
alias ...="cd ..; cd ..;"
