"
"
" General configurations.
"
"

" Disable compatibility with archaic utility `vi`. 
set nocompatible

" Continues the current indentation level when opening a new line.
set autoindent
set smartindent " Can be not smart enough sometimes. Try it before deactivating.

" Adjust the visual width of indentation markers.
set tabstop=8 softtabstop=3 shiftwidth=3

" Rounds the indentation with > and < to multiples of tabstops, shiftwidth, etc.
set shiftround

" Converts tabs to spaces.
set expandtab 

" Make backspaces more powerfull
set backspace=eol,start,indent

" Enable some syntax helpers.
syntax on
set showcmd          

" Remember cursor positioning
" This version fix the warning of "line beyond end-of-file"
autocmd BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") | exe "normal g`\"" | endif

" Ignore case on search
set ic

" Load extra plugins for specific file types
" And prevent changes on indentation settings
filetype plugin on

" Guarda o buffer em vez de pedir para salvar quando troca de arquivo.
set hidden

" Makes the TAB key insert shiftwidth spaces on new openend lines, but keep
" the behavior of a standard TAB key on other usages.
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

" Improves VIM capacity regarding :find and autocomplete commands.
set path+=**

" Evita que o parser do VIM quebre alguns identifiers por conta dos 
" caracteres especiais. Muito útil para tipografia com LaTeX.
set iskeyword+=-
autocmd FileType tex setlocal iskeyword+=:

" Altera o título do terminal. Ajuda quando tem várias janelas abertas.
set title

" Desliga alerta visual.
" Evita o blink em alguns emuladores de VT-8 (como o Terminator).
set novb

" Desliga a interpretação da linha do arquivo com dados acerca da
" formatação do utilizada (indentação, etc.).
set nomodeline

" Destaca espaços extras à direita
" highlight ExtraWhitespace ctermbg=red guibg=red
" match ExtraWhitespace /\s\+$/

" Better completion
set completeopt+=longest,menuone,preview

" Show line numbers
set number

" Usa duas linhas como status (facilita na identificação dos buffers).
set laststatus=2

" Evita que o vim procure por headers da boost.
set include=^\\s*#\\s*include\ \\(<boost/\\)\\@!

"syntax off
"set background=light

" Configura a animação de brackets matching
set showmatch
set matchtime=3

" Permite que a seleçao em bloco avance em espacos vazios.
set virtualedit=block

" Ajeita o posicionamento do cursor quando faz split da janela.
set splitbelow
set splitright

" Faz o VIM entender que a sintaxe do AMPL serve para o MathProg.
autocmd BufRead,BufNewFile *.mod set filetype=ampl

" Ajusta a indentação usada em python.
au FileType python setl sw=3 sts=3 et

" Ajusta a indentação usada em Julia.
" au FileType julia setl sw=4 sts=4 et

" Protege a expansão de \t quando edita um makefile.
autocmd FileType make setl noexpandtab sw=8


" Little lie to make VIM show all its colors.
set t_Co=256


"
"
"
" Custom shortcut keys section.
"
"

" Transforma o backspace do modo normal em shortcut para o registrador
" blackhole.
nnoremap <BS> "_

" Usa a tecla espaço para remover highlighting da busca.
nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR>

" Shortcut to close everything with SHIFT+Q
noremap <S-Q> :qa!<cr>

" Enable easy toggle between headers and sources. 
noremap <F4> :call ToggleHeaderCpp()<CR>

" Atalho para setar modo de operação das linhas.
nnoremap ,n :call NotepadLineToggle()<CR>


"
"
" Definition of helper functions.
"
"

" Changes the behavior of VIM regarding long lines wrapped around.
" This makes VIM acts as a notepad-like application.
function! NotepadLineToggle()
   if !exists('b:notepadlines') || b:notepadlines
      nnoremap <buffer> <DOWN> gj
      nnoremap <buffer> <UP> gk
      let b:notepadlines = 'true'
      echo "Notepad wrapped lines enabled."
   else
      unmap <buffer> <DOWN>
      unmap <buffer> <UP>
      let b:notepadlines = 'false'
      echo "Notepad wrapped lines disabled."
   endif
endfunction

" Function to toggle between header and implementation files.
" Can be used with C and C++ sources, but both files should be
" in the same directory.
function! ToggleHeaderCpp()
   exec 'up|edit %:p:s,.h$,.X123X,:s,.cpp$,.h,:s,.X123X$,.cpp,'
endfunction

