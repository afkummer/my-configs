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
# kummerClearReset() {
#    tput reset
#    zle reset-prompt
# }
# zle -N kummerClearReset
# bindkey '^K' kummerClearReset

