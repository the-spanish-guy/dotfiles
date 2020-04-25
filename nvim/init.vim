call plug#begin()
Plug 'terryma/vim-multiple-cursors'
Plug 'sheerun/vim-polyglot'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'ncm2/ncm2'
Plug 'roxma/nvim-yarp'
Plug 'ncm2/ncm2-bufword'
Plug 'ncm2/ncm2-path'
Plug 'ncm2/ncm2-ultisnips'
Plug 'sirver/UltiSnips'
Plug 'honza/vim-snippets'
Plug 'jiangmiao/auto-pairs'
Plug 'w0rp/ale'
Plug 'preservim/nerdtree'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'ryanoasis/vim-devicons'
Plug 'junegunn/goyo.vim'
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & yarn install'  }

Plug 'neoclide/coc.nvim', {'branch': 'release'}

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



let g:UltiSnipsExpandTrigger="<c-space>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
let g:UltiSnipsEditSplit = 'vertical'
let g:UltiSnipsSnippetDir = '~/.config/nvim/UltiSnips'
let g:UltiSnipsRemoveSelectModeMappings = 0


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
set cmdheight=2
set updatetime=300
set completeopt=noinsert,menuone,noselect
set shortmess+=c




"set seti with colorscheme
"colorscheme seti

"enable ncm2 for all buffers
autocmd BufEnter * call ncm2#enable_for_buffer()
set completeopt=noinsert,menuone,noselect
let g:python3_host_prog='/usr/bin/python3'
let g:coc_node_path='/usr/bin/node'
filetype plugin on

"configs for markdown-preview plugin
let g:mkdp_refresh_slow = 0


let g:NERDTreeGitStatusWithFlags = 1
let g:instant_markdown_autostart = 0

"vim airline config
let g:airline_powerline_fonts = 1
"let g:airline_symbols
let g:airline_theme='base16_snazzy'
"end airline config

"coc settings
let g:coc_global_extensions = [ 'coc-emmet', 'coc-json', 'coc-phpls', 'coc-yaml', 'coc-highlight', 'coc-css', 'coc-prettier']
autocmd CursorHold * silent call CocActionAsync('highlight')
"inoremap <silent><expr> <TAB>
"      \ pumvisible() ? "\<C-n>" :
"      \ <SID>check_back_space() ? "\<TAB>" :
"      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()



"configs for ultisnips
inoremap <silent> <expr> <CR> ncm2_ultisnips#expand_or("\<CR>", 'n')
autocmd BufEnter * call ncm2#enable_for_buffer()
   
    "inoremap <c-c> <ESC>
    "inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
    "inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"


verbose imap <tab>

let mapleader="\<space>"
nnoremap <leader>; A;<esc>
nnoremap <leader>ev :vsplit ~/.config/nvim/init.vim<cr>
nnoremap <leader>sv :source ~/.config/nvim/init.vim<cr>

nnoremap <c-p> :Files<cr>
nnoremap <c-f> :Ag<cr>
nnoremap <c-b> :NERDTreeToggle<cr>
