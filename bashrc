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

# use chrome as default browser
if [ -n "$DISPLAY" ]; then
    BROWSER=chrome
else
    BROWSER=elinks
fi

export TERM=xterm-256color

# default terminal
export TERMINAL=terminator

# set in /etc/locale.conf, but hyper fails to set properly
LANG=en_CA.UTF-8

# search up/down
bind '"\e[A": history-search-backward'
bind '"\e[B": history-search-forward'

# make history less stupid
export HISTFILESIZE=
export HISTSIZE=
export HISTFILE=~/.bash_history
export HISTCONTROL=ignoredups
export HISTIGNORE="ls:exit:history:ack:grep"
shopt -s globstar histappend autocd checkwinsize nocaseglob
export PROMPT_COMMAND='history -a'

export PYTHONSTARTUP=~/.pystartup
export PYTHONDONTWRITEBYTECODE=1
export GOPATH=$HOME/dev/golang
export ANDROID_HOME=$HOME/android-sdk

[[ -s /usr/bin/virtualenvwrapper.sh ]] && source /usr/bin/virtualenvwrapper.sh
[[ -s /home/jason/vmfarms/vmpass/vmpass.sh ]] && source /home/jason/vmfarms/vmpass/vmpass.sh
[ -f ~/.fzf.bash ] && source ~/.fzf.bash
[[ -s /usr/share/nvm/init-nvm.sh ]] && source /usr/share/nvm/init-nvm.sh --no-use
alias node='unalias node ; unalias npm ; nvm use default ; node $@'
alias npm='unalias node ; unalias npm ; nvm use default ; npm $@'

PATH=/home/jason/.local/bin:$PATH
PATH=/home/jason/scripts:$PATH
