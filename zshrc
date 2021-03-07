
#
# Configurações provenientes do my-configs
#

#unsetopt sharehistory

# Carrega o conjunto de definições padrão de todos os shells
if [ -f ~/.my-shutils ]; then
   . ~/.my-shutils
else
   echo -e "setaf 1\nbold" | tput -S
   echo "Shell function library (.my-shutils) not found."
   tput sgr0
fi

