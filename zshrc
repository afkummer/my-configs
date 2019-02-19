# Configurações provenientes do my-configs
if [ -d $HOME/.local/bin ]
then
   export PATH=$HOME/.local/bin:$PATH
fi
unsetopt sharehistory
alias xo=xdg-open
alias zimpl="zimpl -l100 "
alias pdflatex="pdflatex -interaction=nonstopmode "
alias make="make -j4 "
alias latexmk="latexmk -bibtex -pdf -interaction=nonstopmode"
alias time='/usr/bin/time '

alias SSHA="eval \"$(ssh-agent)\""

export GUROBI_HOME="/home/alberto/.local/gurobi801/linux64"
export GRB_LICENSE_FILE="/home/alberto/.local/gurobi801/linux64/gurobi.lic"

