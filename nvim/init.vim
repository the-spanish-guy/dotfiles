call plug#begin()
Plug 'terryma/vim-multiple-cursors'
Plug 'sheerun/vim-polyglot'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'ncm2/ncm2'
Plug 'roxma/nvim-yarp'
Plug 'ncm2/ncm2-bufword'
Plug 'ncm2/ncm2-path'
Plug 'jiangmiao/auto-pairs'
Plug 'w0rp/ale'

Plug 'sirver/UltiSnips'
Plug 'honza/vim-snippets'

Plug 'preservim/nerdtree'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'ryanoasis/vim-devicons'
Plug 'junegunn/goyo.vim'
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & yarn install'  }
Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'}
Plug 'rogual/neovim-dot-app'

Plug 'trusktr/seti.vim'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

"Plug 'suan/vim-instant-markdown', {'for': 'markdown'}
call plug#end()
syntax on
set t_Co=256
set encoding=UTF-8
set guifont=Fira_Code:h10

"set seti with colorscheme
"colorscheme seti

"enable ncm2 for all buffers
autocmd BufEnter * call ncm2#enable_for_buffer()
set completeopt=noinsert,menuone,noselect
let g:python3_host_prog='/usr/bin/python3'
let g:python_host_prog='/usr/bin/python3'

filetype plugin on

"configs for markdown-preview plugin
let g:mkdp_refresh_slow = 0


let g:NERDTreeGitStatusWithFlags = 1
let g:instant_markdown_autostart = 0

"vim airline config
let g:airline_powerline_fonts = 1
"g:airline_symbols
let g:airline_theme='base16_snazzy'
"end airline config

"coc settings
let g:coc_global_extensions = [	'coc-emmet', 'coc-json',	'coc-phpls',	'coc-yaml',	'coc-highlight',	'coc-css',	'coc-prettier']
autocmd CursorHold * silent call CocActionAsync('highlight')

"configs for ultisnips
let g:UltiSnipsEditSplit = 'vertical'
let g:UltiSnipsSnippetDir = '~/.config/nvim/UltiSnips'

"set some configs
set termguicolors
set hidden
set number
set relativenumber
set mouse=a
set inccommand=split
set smarttab
set tabstop=2
set shiftwidth=2

verbose imap <tab>

let mapleader="\<space>"
nnoremap <leader>; A;<esc>
nnoremap <leader>ev :vsplit ~/.config/nvim/init.vim<cr>
nnoremap <leader>sv :source ~/.config/nvim/init.vim<cr>

nnoremap <c-p> :Files<cr>
nnoremap <c-f> :Ag<cr>
nnoremap <c-b> :NERDTreeToggle<cr>
