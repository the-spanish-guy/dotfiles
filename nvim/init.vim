call plug#begin()
Plug 'terryma/vim-multiple-cursors'
Plug 'sheerun/vim-polyglot'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'ncm2/ncm2'
Plug 'roxma/nvim-yarp'
Plug 'ncm2/ncm2-bufword'
Plug 'ncm2/ncm2-path'

Plug 'ap/vim-css-color'

Plug 'jiangmiao/auto-pairs'
Plug 'w0rp/ale'
Plug 'preservim/nerdtree'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'ryanoasis/vim-devicons'
Plug 'junegunn/goyo.vim'
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & yarn install'  }

Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'trusktr/seti.vim'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'junegunn/vim-emoji'

Plug 'airblade/vim-gitgutter'
Plug 'Xuyuanp/nerdtree-git-plugin'

Plug 'preservim/nerdcommenter'

"propriedades, variaveis etc, com barra lateral
"Plug 'liuchengxu/vista.vim'

Plug 'Yggdroot/indentLine'

Plug 'majutsushi/tagbar'


"Plug 'suan/vim-instant-markdown', {'for': 'markdown'}
call plug#end()

syntax on
set t_Co=256
set encoding=UTF-8
set guifont=Fira_Code:h10


let g:gitgutter_max_signs = 999
if emoji#available()
	let g:gitgutter_sign_added = emoji#for('small_blue_diamond')
	let g:gitgutter_sign_modified = emoji#for('small_orange_diamond')
	let g:gitgutter_sign_removed = emoji#for('small_red_triangle')
	let g:gitgutter_sign_modified_removed = emoji#for('collision')
endif

"set some configs
if (has("termguicolors"))
	set termguicolors
endif
set hidden
set number
set relativenumber
set mouse=a
set inccommand=split
set smarttab
set tabstop=2
set shiftwidth=2
set cmdheight=2        " Give more space for displaying messages.
set updatetime=300
set completeopt=noinsert,menuone,noselect
set shortmess+=c
set completefunc=emoji#complete


"set seti with colorscheme
"colorscheme seti
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
let g:coc_global_extensions = [
	\	'coc-snippets',
	\ 'coc-emmet',
	\ 'coc-json', 
	\ 'coc-phpls',
	\ 'coc-yaml',
	\	'coc-css',
	\	'coc-prettier',
	\	'coc-eslint',
	\ 'coc-highlight',
	\	]

nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
nnoremap <silent> K :call <SID>show_documentation()<CR>

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
" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current position.

" Coc only does snippet and additional edit on confirm.
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"




""""""""""""""""""
"	vim-gitgutter
""""""""""""""""""
nmap ]h <Plug>(GitGutterNextHunk)
nmap [h <Plug>(GitGutterPrevHunk)


""""""""""""""""""""""""""""
" nerdtree-git-plugin
""""""""""""""""""""""""""""
let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ 'Ignored'   : '☒',
    \ "Unknown"   : "?"
    \ }

let g:NERDTreeHighlightFolders = 1 " enables folder icon highlighting using exact match
let g:NERDTreeHighlightFoldersFullName = 1 " highlights the folder name





"function! NearestMethodOrFunction() abort
  "return get(b:, 'vista_nearest_method_or_function', '')
"endfunction

"set statusline+=%{NearestMethodOrFunction()}
" By default vista.vim never run if you don't call it explicitly.
"
" If you want to show the nearest function in your statusline automatically,
" you can add the following line to your vimrc 
"autocmd VimEnter * call vista#RunForNearestMethodOrFunction()

let g:indentLine_char = 'c'
let g:indentLine_char_list = ['|', '¦', '┆', '┊']


verbose imap <tab>

let mapleader="\<space>"
nnoremap <leader>; A;<esc>
nnoremap <leader>ev :vsplit ~/.config/nvim/init.vim<cr>
nnoremap <leader>sv :source ~/.config/nvim/init.vim<cr>

nnoremap <c-p> :Files<cr>
nnoremap <c-f> :Ag<cr>
nnoremap <c-b> :NERDTreeToggle<cr>
