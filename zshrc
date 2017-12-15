# Configurações provenientes do my-configs
if [ -d $HOME/.local/bin ]
then
   export PATH=$HOME/.local/bin:$PATH
fi
ZSH_THEME="evan"
unsetopt sharehistory
alias xo=xdg-open
alias zimpl="zimpl -l100 "

# Ajusta o CTRL+L para o reset.
bindkey -s '^K' 'tput reset\n'

