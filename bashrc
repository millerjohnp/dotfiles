# Make it easy to find executables
PATH=$PATH:~/bin
PATH=$PATH:/usr/local/bin

# Make it easier to work with git
source ~/.git-completion.bash 
alias gs="git status"

# Use Python3 by default.
# rlwrap is a readline wrapper that allows keyboard editing of text input
# If we're using python3 by default, we also want to use the correct pip by default.
#alias python="rlwrap python3"
#alias pip="pip3"

# Have a very long memory
HISTSIZE=10000
HISTFILESIZE=200000

# Open the target in Safari
alias safari="open -a 'Safari'"


# Push the contents of my website to the public.
function publish_website {
    scp ~/projects/website/personal_website/* miller_john@b5.millennium.berkeley.edu:~/public_html
}

function tr {
    cd /Users/miller_john/projects/tracking/research_log
}

# Remotely access the server (hardtcore-plain)
function hcp {
    ssh -Y john@128.32.36.74
}

function hc {
    ssh -L 8000:127.0.0.1:8000 john@128.32.36.74 -t "tmux a -t sess || tmux new -s sess"
}

function writeup {
   cp -r ~/writeup_template/ $1
}

# Try to ssh into the Xavi server.
function xavi {
    ssh -L 8080:127.0.0.1:8000 millerj0@xavi.ischool.uw.edu -t "tmux a -t sess || tmux new -s sess"
}

function cv {
    ssh -L 8008:127.0.0.1:8000 john@24.130.112.227 -t "tmux a -t sess || tmux new -s sess"
}

function titanic {
    ssh -L 7000:127.0.0.1:8000 miller_john@titanic.millennium.berkeley.edu -t "tmux a -t sess || tmux new -s sess"
}

function mayhem {
    ssh -L 7500:127.0.0.1:8000 miller_john@mayhem.millennium.berkeley.edu -t "tmux a -t sess || tmux new -s sess"
}

function b5 {
    ssh -L 8008:127.0.0.1:8501 -L 7007:127.0.0.1:8502 miller_john@b5.millennium.berkeley.edu -t "tmux a -t sess || tmux new -s sess"
}

function vasa {
    ssh -L 8008:127.0.0.1:8501 miller_john@vasa.millennium.berkeley.edu -t "tmux a -t sess || tmux new -s sess"
}

function skim {
    /Applications/Skim.app/Contents/MacOS/Skim $1 &
}
