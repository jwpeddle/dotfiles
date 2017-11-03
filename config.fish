set EDITOR nvim
set PATH /home/jason/.local/bin $PATH
set TERMINAL termite
set fish_greeting

# aliases
alias vim="nvim"
alias chrome="google-chrome-stable"

function fish_prompt
  echo -ns (set_color magenta) $USER
  echo -ns (set_color white) "@"
  echo -ns (set_color blue) (prompt_hostname)
  echo -ns (set_color yellow) ' ' (prompt_pwd)
  echo -ns (set_color red) (__fish_git_prompt)
  echo -ns \n
  echo -ns (set_color normal) "> "
end
