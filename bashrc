# If not running interactively, don't do anything
#[[ $- != *i* ]] && return

[[ -f ~/.bash_colors ]] && . ~/.bash_colors
[[ -f ~/.bash_aliases ]] && . ~/.bash_aliases

git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/git:\1 /'
}

export PS1="\[$c197\]\$(git_branch)\[$c69\]\u@\h \[$c227\]\w \[$c0\]
\$ "

# use most to page- pretty colors!
export PAGER='/usr/bin/most -s'

# use vim as default editor
export EDITOR=vim

# use chrominum as default browser
export BROWSER=chromium

# default terminal
export TERMINAL=terminator

# search up/down
bind '"\e[A": history-search-backward'
bind '"\e[B": history-search-forward'

# make history less stupid
export HISTFILESIZE=
export HISTSIZE=
export HISTFILE=~/.bash_history
export HISTCONTROL=ignoredups
export HISTIGNORE="ls:exit:history:ack:grep"
shopt -s histappend autocd checkwinsize
export PROMPT_COMMAND='history -a'

export PYTHONSTARTUP=~/.pystartup

. /usr/bin/virtualenvwrapper.sh
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"
[[ -f ~/.autojump/etc/profile.d/autojump.bash ]] && source ~/.autojump/etc/profile.d/autojump.bash
