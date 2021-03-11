call plug#begin('~/.config/nvim/plugged')

Plug 'joshdick/onedark.vim'
Plug 'sheerun/vim-polyglot'
Plug 'tpope/vim-liquid'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'mattn/emmet-vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-sleuth'
Plug 'tpope/vim-surround'
Plug 'preservim/nerdcommenter'

call plug#end()

"
" Config
"
syntax on
colorscheme onedark
set number
set ruler
set mouse=a
"
" Allows for switching between files in the same buffer without saving, it will
" complain when trying to quit
"
set hidden
"
" Use case insensitive search, except when using capital letters
"
set ignorecase
set smartcase
"
" Allow backspacing over autoindent, line breaks and start of insert action
"
set backspace=indent,eol,start
"
" When opening a new line and no filetype-specific indenting is enabled, keep
" the same indent as the line you're currently on. Useful for READMEs, etc.
"
set autoindent
"
" Use <F11> to toggle between 'paste' and 'nopaste'
"
set pastetoggle=<F11>
"
" Persistent undo
"
set undofile
set undodir=~/.config/nvim/undo
"
" Use '+' register (and thus the system clipboard) for all unnamed 
" clipboard-based operations
"
set clipboard+=unnamedplus

"
" FZF
"
nnoremap <c-p> :GFiles<cr>
nnoremap <s-p> :Files<cr>
"
" Netrw
"
let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_browse_split = 4
let g:netrw_altv = 1
let g:netrw_winsize = 25
"
" Auto close
"
inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
inoremap {{ {{  }}<ESC>hhi
inoremap {<CR> {<CR>}<ESC>O
inoremap {;<CR> {<CR>};<ESC>O
inoremap {,<CR> {<CR>},<ESC>O
inoremap {% {%  %}<ESC>hhi
inoremap <!-- <!--  --><ESC>hhhi
"
" Abbreviations
"
iabbrev log console.log(
