" Plug
call plug#begin()
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-sleuth'
Plug 'editorconfig/editorconfig-vim'

Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'wincent/ferret', { 'on': ['Ack', 'Acks'] }
Plug 'junegunn/fzf', { 'on': 'FZF' }

Plug 'tpope/vim-surround'
Plug 'terryma/vim-multiple-cursors'

Plug 'wellle/targets.vim'
Plug 'michaeljsmith/vim-indent-object'
Plug 'kana/vim-textobj-user'
Plug 'vim-scripts/argtextobj.vim'

Plug 'tpope/vim-commentary'
Plug 'nestorsalceda/vim-strip-trailing-whitespaces'
Plug 'terryma/vim-expand-region'

Plug 'davidhalter/jedi-vim'
Plug 'python-mode/python-mode', { 'for': 'python' }
Plug 'pearofducks/ansible-vim', { 'for': 'ansible' }
Plug 'hashivim/vim-terraform', { 'for': 'terraform' }
Plug 'vim-scripts/bats.vim', { 'for': 'bats' }

call plug#end()

let mapleader=","

let g:TerminusFocusReporting=0
let g:TerminusMouse=0
let g:TerminusBracketedPaste=0

if exists('+termguicolors') && $TERM ==# 'screen-256color'
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif

if filereadable(expand("~/.vimrc_background"))
  let base16colorspace=256
  source ~/.vimrc_background
endif

set colorcolumn=110

if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif
let g:airline_powerline_fonts = 1

let NERDTreeIgnore=['\.pyc$', '\.orig$', '__pycache__', '\.git$']
map <C-x> :NERDTreeToggle<CR>

nmap <leader>e :Files<CR>

let g:pymode_warnings = 0
let g:pymode_folding = 0
let g:pymode_lint = 0
let g:pymode_breakpoint = 0
let g:pymode_options_max_line_length = 110


let g:terraform_align = 1

set hlsearch
set list
set listchars=tab:▸\ ,eol:¬
set number
set showmatch
set wildignore+=*.pyc,node_modules,*.egg-info
set wildmode=list:longest
set nofoldenable

set cursorline

imap jj <Esc>
cmap w!! w !sudo tee % >/dev/null

set directory^=~/.vim/recover
set undofile
set undodir=~/.vim/undodir


set clipboard=unnamed
if has('unnamedplus')
  set clipboard=unnamed,unnamedplus
endif

set completeopt=longest,menuone
set hidden
