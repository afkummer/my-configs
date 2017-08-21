# Configurações provenientes do my-configs
if [ -d $HOME/.local/bin ]
then
   export PATH=$HOME/.local/bin:$PATH
fi
ZSH_THEME="maran"
unsetopt sharehistory
alias xo=xdg-open
