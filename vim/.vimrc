" Plug
call plug#begin()
Plug 'tpope/vim-sensible'
Plug 'editorconfig/editorconfig-vim'

Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'wincent/ferret'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'


Plug 'tpope/vim-surround'
Plug 'mg979/vim-visual-multi', {'branch': 'master'}

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
Plug 'vim-scripts/bats.vim', { 'for': 'bats' }

call plug#end()

let mapleader=","

set colorcolumn=110

let NERDTreeIgnore=['\.pyc$', '\.orig$', '__pycache__', '\.git$']
map <C-x> :NERDTreeToggle<CR>

nmap <leader>e :Files<CR>

let g:pymode_warnings = 0
let g:pymode_folding = 0
let g:pymode_lint = 0
let g:pymode_breakpoint = 0
let g:pymode_options_max_line_length = 110


set hlsearch
set list
set listchars=tab:▸⸱,eol:¬,trail:⸱
set number
set showmatch " show matching brace
set wildignore+=*.pyc,node_modules,*.egg-info
set wildmode=list:longest
set nofoldenable
set clipboard^=unnamed,unnamedplus
set cursorline
set showcmd
set mouse=a         " enable mouse in all modes. added to be able to resize split windows. Note: Press shift while mouse selection
if has("mouse_sgr") " fixes to resize split windows inside tmux  https://stackoverflow.com/a/1925325://stackoverflow.com/a/19253251
    set ttymouse=sgr
else
    set ttymouse=xterm2
end
if &term =~ 'gnome' "from :help arrow_modifiers in gnome
  execute "set <xUp>=\<Esc>[@;*A"
  execute "set <xDown>=\<Esc>[@;*B"
  execute "set <xRight>=\<Esc>[@;*C"
  execute "set <xLeft>=\<Esc>[@;*D"
endif
set term=xterm-256color " Fix ctrl-arrows inside tmux  https://stackoverflow.com/a/16640087

imap jj <Esc>
cmap w!! w !sudo tee % >/dev/null

set directory^=~/.vim/recover
set undofile
set undodir=~/.vim/undodir

set completeopt=longest,menuone
