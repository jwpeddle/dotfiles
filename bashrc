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
# append history when shell exits
shopt -s histappend
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
#export PROMPT_COMMAND="history -a; history -c; history -r"

# ******************** mappings ********************
# filter up/down by matching what's already typed
bind '"\e[A": history-search-backward'
bind '"\e[B": history-search-forward'

#make capslock ctrl
export XKB_DEFAULT_OPTIONS=ctrl:nocaps

# ******************** other configs ********************

[[ -f ~/.bash_colors ]] && source ~/.bash_colors
[[ -f ~/.bash_aliases ]] && source ~/.bash_aliases

# run ssh-agent automatically
[[ -z "$SSH_AUTH_SOCK" ]] && eval "$(ssh-agent -s)" &>/dev/null

# direnv
eval "$(direnv hook bash)"

# nvm
[[ -s /usr/share/nvm/init-nvm.sh ]] && source /usr/share/nvm/init-nvm.sh

#fzf
source /usr/share/fzf/key-bindings.bash
source /usr/share/fzf/completion.bash
export FZF_DEFAULT_COMMAND="fd --follow"
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"

# python
export PYTHONDONTWRITEBYTECODE=1

# pyenv
export PYENV_ROOT="$HOME/.pyenv"
export PYENV_VIRTUALENV_DISABLE_PROMPT=1
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

# ripgrep
export RIPGREP_CONFIG_PATH="$XDG_CONFIG_HOME/ripgrep/config"

# ruby
export PATH="$HOME/.gem/ruby/2.7.0/bin:$PATH"

#sbp
#export sbp_path="$HOME/src/sbp"
#source /home/jason/src/sbp/sbp.bash

[ -f ~/.fzf.bash ] && source ~/.fzf.bash
