" No vi compatibility
set nocp

" Adjust indentation
set expandtab
set tabstop=3
set softtabstop=3
set shiftwidth=3
set autoindent
set shiftround
set smartindent

" Make backspaces more powerfull
set backspace=eol,start,indent

" Enable some syntax helpers.
syntax on            " syntax highlighting
set showcmd          " show (partial) command in status line

" Remember cursor positioning
" This version fix the warning of "line beyond end-of-file"
autocmd BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") | exe "normal g`\"" | endif

" Ignore case on search
set ic

" Autowrite when changing file
" set autowrite

" Função para alternar entre um header e um cpp
" Já salva o arquivo antes
function! ToggleHeaderCpp()
   exec 'up|edit %:p:s,.h$,.X123X,:s,.cpp$,.h,:s,.X123X$,.cpp,'
endfunction

" Alterna entre .h e .cpp
noremap <F4> :call ToggleHeaderCpp()<cr>

" Shortcut to close everything with SHIFT+Q
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
set wildmenu
set wildignore=*.swp,*.bak,*.pyc,*.class
set wildmode=list:longest,full

" Altera o título do terminal. Ajuda quando tem várias janelas abertas.
set title

" Aviso visual em vez de tocar um som.
set visualbell
set noerrorbells

" Desliga alerta visual.
" Evita o blink em alguns emuladores de VT-8 (como o Terminator).
set novb

" Desliga a interpretação da linha do arquivo com dados acerca da
" formatação do utilizada (indentação, etc.).
set nomodeline

" Ajusta a indentação usada em python.
au FileType python setl sw=3 sts=3 et

" Protege a expansão de \t quando edita um makefile.
autocmd FileType make setlocal noexpandtab

" Destaca espaços extras à direita
" highlight ExtraWhitespace ctermbg=red guibg=red
" match ExtraWhitespace /\s\+$/

" Better completion
set completeopt+=longest,menuone,preview

" Show line numbers
set number

" Usa duas linhas como status (facilita na identificação dos buffers).
set laststatus=2

" Auxiliar para fazer operaçoes com tabs.
" nmap . :tabn<cr>
" nmap , :tabp<cr>
" nmap l :tabnew<cr>

" Faz merge das linhas adjacentes, e reformata o texto em 80 colunas.
" Linhas em branco delimitam parágrafos. Comandos alternativos são
" - gqq - opera sobre a linha até o '\n'
" - gq} - opera em todas as linhas adjacentes até encontrar uma em branco
map <S-W> :set tw=80<cr><bar>gq}<bar>:set tw=0<cr>

" Evita que o vim procure por headers da boost.
set include=^\\s*#\\s*include\ \\(<boost/\\)\\@!

"syntax off
"set background=light

" Configura a animação de brackets matching
set showmatch
set matchtime=3

" Faz o VIM entender que a sintaxe do AMPL serve para o MathProg.
autocmd BufRead,BufNewFile *.mod set filetype=ampl

" Permite que a seleçao em bloco avance em espacos vazios.
set virtualedit=block

" Ajeita o posicionamento do cursor quando faz split da janela.
set splitbelow
set splitright

" Usa a tecla espaço para remover highlighting da busca.
nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR>

" Navegação mais simples em linhas longas com JK
nnoremap <C-j> gj
nnoremap <C-k> gk

" Transforma o backspace do modo normal em shortcut para o registrador
" blackhole.
nnoremap <BS> "_

set t_Co=256
set so=7
