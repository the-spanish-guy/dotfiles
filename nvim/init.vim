call plug#begin()
Plug 'terryma/vim-multiple-cursors'
Plug 'sheerun/vim-polyglot'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'ncm2/ncm2'
Plug 'roxma/nvim-yarp'
Plug 'jiangmiao/auto-pairs'
Plug 'w0rp/ale'
Plug 'preservim/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'ryanoasis/vim-devicons'
call plug#end()

set encoding=UTF-8

let g:NERDTreeGitStatusWithFlags = 1

set hidden
set number
set mouse=a
set inccommand=split
set smarttab
set tabstop=2
set shiftwidth=2

let mapleader="\<space>"
nnoremap <leader>; A;<esc>
nnoremap <leader>ev :vsplit ~/.config/dotfiles/nvim/init.vim<cr>
nnoremap <leader>sv :source ~/.config/dotfiles/nvim/init.vim<cr>

nnoremap <c-p> :Files<cr>
