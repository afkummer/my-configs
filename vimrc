" Adjust indentation
set expandtab
set tabstop=3
set softtabstop=3
set shiftwidth=3
set autoindent

" Make backspaces more powerfull
set backspace=indent,eol,start

" Enable some syntax helpers.
syntax on            " syntax highlighting
set showcmd          " show (partial) command in status line

" No vi compatibility
set nocp

" Remember cursor positioning
au BufReadPost * if line("'\"")|execute("normal `\"")|endif

" Ignore case on search
set ic

" Autowrite when changing file
set autowrite

" Função para alternar entre um header e um cpp
" Já salva o arquivo antes
function! ToggleHeaderCpp()
   exec 'up|edit %:p:s,.h$,.X123X,:s,.cpp$,.h,:s,.X123X$,.cpp,'
endfunction

" Alterna entre .h e .cpp
noremap <F4> :call ToggleHeaderCpp()<cr>

" Shortcut to close everything with SHITF+Q
noremap <S-Q> :qa!<cr>

" Load extra plugins for specific file types
" And prevent changes on indentation settings
filetype plugin on

" Guarda o buffer em vez de pedir para salvar quando troca de arquivo.
set hidden

" TAB responder de forma mais efetiva.
set smarttab

" Destaca as ocorrências dos termos da busca.
set hlsearch

" Aumenta a capacidade de undo do VIM.
set history=1000
set undolevels=1000

" Diz para o VIM ignorar alguns arquivos autocriados.
set wildignore=*.swp,*.bak,*.pyc,*.class

" Altera o título do terminal. Ajuda quando tem várias janelas abertas.
"set title

" Aviso visual em vez de tocar um som.
set visualbell
set noerrorbells

" Não cria arquivos de troca.
set nobackup
set noswapfile

" Desliga alerta visual.
" Evita o blink em alguns emuladores de VT-8 (como o Terminator).
set novb

" Ativa o suporte a C++ 2011.
let g:syntastic_cpp_compiler_options = ' -std=c++11'

set modeline

" Ajusta a indentação usada em python.
au FileType python setl sw=3 sts=3 et

" Diz para o VIM que o terminal é multicolor.
set t_Co=256

" Protege a expansão de \t quando edita um makefile.
autocmd FileType make setlocal noexpandtab

