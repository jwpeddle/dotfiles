# if not running interactively, don't do anything
[[ $- != *i* ]] && return

# ******************** defaults ********************
export PAGER=nvimpager
export EDITOR=nvim
export TERM=xterm-256color

# paths
export PATH="$HOME/.local/bin":$PATH
export XDG_CONFIG_HOME="$HOME/.config"

# ******************** bash options ********************
# ** expands to all subdirectories
shopt -s globstar
# ignore case when expanding filenames
shopt -s nocaseglob
# fix spelling errors when using cd
shopt -s cdspell
# fix spelling errors on word completion
shopt -s dirspell
# cd without cd
shopt -s autocd

# make history less stupid
export HISTFILESIZE=1000000
export HISTSIZE=1000000
export HISTFILE=~/.bash_history
export HISTCONTROL=ignoredups:erasedups
export HISTIGNORE="ls:exit:history:grep:rg"
export HISTTIMEFORMAT="%F %T "
# sync history across terminals
export PROMPT_COMMAND="history -a; history -n"

# ******************** mappings ********************
# filter up/down by matching what's already typed
bind '"\e[A": history-search-backward'
bind '"\e[B": history-search-forward'

# make capslock ctrl
export XKB_DEFAULT_OPTIONS=ctrl:nocaps

# ******************** other configs ********************

[[ -f ~/.bash_colors ]] && source ~/.bash_colors
[[ -f ~/.bash_aliases ]] && source ~/.bash_aliases

# run ssh-agent automatically
[[ -z "$SSH_AUTH_SOCK" ]] && eval "$(ssh-agent -s)" &>/dev/null

# direnv
eval "$(direnv hook bash)"

# python
export PYTHONDONTWRITEBYTECODE=1

# ripgrep
export RIPGREP_CONFIG_PATH="$XDG_CONFIG_HOME/ripgrep/config"

#sbp
export SBP_PATH="$HOME/src/sbp"
source ${SBP_PATH}/sbp.bash
