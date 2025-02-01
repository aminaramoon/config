source $HOME/.config/zsh/config

export PATH="$PATH:/usr/local/cuda/bin"
export PATH="$PATH://home/amin/.cargo/bin"
export LD_LIBRARY_PATH="$LD_LIBRARY_PATH:/usr/local/cuda/lib64"


export WORKSPACE="$HOME/workspace/github/theseus"
export THESEUS_SOURCE=$WORKSPACE


# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export CMAKE_BUILD_PARALLEL_LEVEL=32
else
  export CMAKE_BUILD_PARALLEL_LEVEL=24
fi

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/amin/mambaforge/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/amin/mambaforge/etc/profile.d/conda.sh" ]; then
        . "/home/amin/mambaforge/etc/profile.d/conda.sh"
    else
        export PATH="/home/amin/mambaforge/bin:$PATH"
    fi
fi
unset __conda_setup

if [ -f "/home/amin/mambaforge/etc/profile.d/mamba.sh" ]; then
    . "/home/amin/mambaforge/etc/profile.d/mamba.sh"
fi
# <<< conda initialize <<<

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# These lines setup the DevZero CLI completions.
if test -x "/usr/local/bin/dzcmd"; then
  source <(/usr/local/bin/dzcmd dz completion zsh)
fi
