

#
# Configurações provenientes do my-configs
#

unsetopt sharehistory

# Compila um arquivo LaTeX e põe aviso do return do latexmk
# na última linha do terminal.
function compileLatex() {
   latexmk -bibtex -pdf -interaction=nonstopmode $@
   res=$?
   if [ $res -ne 0 ]; then
      echo -e "setaf 1\nbold" | tput -S
      echo "LaTeX compilation error"
   else
      echo -e "setaf 4\nbold" | tput -S
      echo "LaTeX compilation succeeded"
   fi
   tput sgr0
}
alias latexmk=compileLatex

if [ -d $HOME/.local/bin ]
then
   export PATH=$HOME/.local/bin:$PATH
fi

which time > /dev/null
if [ $? -ne 0 ]; then
   echo -e "setaf 1\nbold" | tput -S
   echo "Warning: \`time\` utility not found in PATH."
   tput sgr0
else
   alias time='/usr/bin/time -v'
fi

alias xo=xdg-open
alias zimpl="zimpl -l100 "
alias make="make -j4 "

# Single initialization of SSH agent.
pidof ssh-agent > /dev/null
if [ $? -eq 1 ]; then
   ssh-agent > ~/.ssh_agent 
fi
eval "$(cat ~/.ssh_agent)" > /dev/null

