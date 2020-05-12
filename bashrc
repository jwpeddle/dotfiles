# if not running interactively, don't do anything
[[ $- != *i* ]] && return

# ******************** defaults ********************
export PAGER=nvimpager
export EDITOR=nvim
export TERM=xterm-256color

# ******************** bash options ********************
# ** expands to all subdirectories
shopt -s globstar
# append history when shell exits
shopt -s histappend
# ignore case when expanding filenames
shopt -s nocaseglob
# fix spelling errors when using cd
shopt -s cdspell
# fix spelling errors on word completion
shopt -s dirspell

# make history less stupid
export HISTFILESIZE=1000000
export HISTSIZE=1000000
export HISTFILE=~/.bash_history
export HISTCONTROL=ignoredups:erasedups
export HISTIGNORE="ls:exit:history:grep:rg"
export HISTTIMEFORMAT='%F %T '
# sync history across terminals
export PROMPT_COMMAND="history -a; history -c; history -r"

# ******************** mappings ********************
# filter up/down by matching what's already typed
bind '"\e[A": history-search-backward'
bind '"\e[B": history-search-forward'

# ******************** other configs ********************

# paths
export PATH=/home/jason/.local/bin:$PATH
export XDG_CONFIG_HOME="$HOME/.config"
export RIPGREP_CONFIG_PATH="$XDG_CONFIG_HOME/ripgrep/config"

[[ -f ~/.bash_colors ]] && source ~/.bash_colors
[[ -f ~/.bash_aliases ]] && source ~/.bash_aliases
[[ -f ~/.fzf.bash ]] && source ~/.fzf.bash
[[ -s /usr/bin/virtualenvwrapper.sh ]] && source /usr/bin/virtualenvwrapper.sh
[[ -s /usr/share/nvm/init-nvm.sh ]] && source /usr/share/nvm/init-nvm.sh

# run ssh-agent automatically
[[ -z "$SSH_AUTH_SOCK" ]] && eval "$(ssh-agent -s)" &>/dev/null

#make capslock ctrl
export XKB_DEFAULT_OPTIONS=ctrl:nocaps

# python
export PYTHONDONTWRITEBYTECODE=1
export PYTHONSTARTUP=~/.pystartup
export VIRTUAL_ENV_DISABLE_PROMPT=1

#sbp
sbp_path=/home/jason/src/sbp
source /home/jason/src/sbp/sbp.bash
