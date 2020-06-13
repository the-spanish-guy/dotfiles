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


Plug 'norcalli/nvim-colorizer.lua'
Plug 'junegunn/rainbow_parentheses.vim'

"propriedades, variaveis etc, com barra lateral
Plug 'liuchengxu/vista.vim'
"Plug 'majutsushi/tagbar'

"Plug 'joshdick/onedark.vim'

Plug 'Yggdroot/indentLine'

call plug#end()

""""""""""""""""""""""""""""
" configurações iniciais
""""""""""""""""""""""""""""
filetype plugin on
syntax on
syntax enable
set t_Co=256
set encoding=UTF-8
set guifont=Fira_Code:h10
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


""""""""""""""""""""""""""""
" Terminal Integrado
""""""""""""""""""""""""""""
" open new split panes to right and below
set splitright
set splitbelow

" Esc para sair do modo inserção do terminal
tnoremap <Esc> <C-\><C-j>
au BufEnter * if &buftype == 'terminal' | :startinsert | endif

"ctrl+j abre o terminal
function! OpenTerminal()
  split term://zsh
  resize 10
endfunction
nnoremap <c-j> :call OpenTerminal()<CR>



""""""""""""""""""""""""""""
" set seti with colorscheme
""""""""""""""""""""""""""""
"colorscheme onedark


""""""""""""""""""""""""""""
" caminho para alguns executaveis
""""""""""""""""""""""""""""
let g:python3_host_prog='/usr/bin/python3'
let g:coc_node_path='/usr/bin/node'


""""""""""""""""""""""""""""
" Vim-gitgutter
""""""""""""""""""""""""""""
let g:gitgutter_max_signs = 999


""""""""""""""""""""""""""""
" vim-emoji
""""""""""""""""""""""""""""
if emoji#available()
	let g:gitgutter_sign_added = emoji#for('small_blue_diamond')
	let g:gitgutter_sign_modified = emoji#for('small_orange_diamond')
	let g:gitgutter_sign_removed = emoji#for('small_red_triangle')
	let g:gitgutter_sign_modified_removed = emoji#for('collision')
endif


""""""""""""""""""""""""""""
" w0rp/ale
""""""""""""""""""""""""""""
let b:ale_fixers = ['prettier', 'eslint']
let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
let g:ale_sign_error = '✘'
let g:ale_sign_warning = '⚠'
"highlight ALEErrorSign ctermbg=NONE ctermfg=red
"highlight ALEWarningSign ctermbg=NONE ctermfg=yellow



""""""""""""""""""""""""""""
" iamcco/markdown-preview.nvim
""""""""""""""""""""""""""""
let g:mkdp_refresh_slow = 0


""""""""""""""""""""""""""""
" nerdtree-git-plugin
""""""""""""""""""""""""""""
"let g:NERDTreeGitStatusWithFlags = 1
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



""""""""""""""""""""""""""""
" nerdtree
""""""""""""""""""""""""""""
let NERDTreeShowHidden = 1
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
let NERDTreeIgnore = []
let NERDTreeStatusline = ''
"let g:instant_markdown_autostart = 0
"Fecha automaticamente o NERDTree se só sobrar eleem aberto
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" Toggle


""""""""""""""""""""""""""""
" vim-airline / vim-airline_theme
""""""""""""""""""""""""""""
let g:airline_powerline_fonts = 1
"let g:airline_symbols
let g:airline_theme='base16_snazzy'
"end airline config


""""""""""""""""""""""""""""
" coc.nvim
""""""""""""""""""""""""""""
let g:coc_global_extensions = [
	\	'coc-snippets',
	\ 'coc-emmet',
	\	'coc-html',
	\ 'coc-css',
	\ 'coc-json', 
	\ 'coc-phpls',
	\ 'coc-yaml',
	\ 'coc-jedi',
	\ 'coc-python',
	\	]

nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
nnoremap <silent> K :call <SID>show_documentation()<CR>

autocmd CursorHold * silent call CocActionAsync('highlight')
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
" vim-nerdtree-syntax-highlight
""""""""""""""""""""""""""""
let g:NERDTreeHighlightFolders = 1 " enables folder icon highlighting using exact match
let g:NERDTreeHighlightFoldersFullName = 1 " highlights the folder name


""""""""""""""""""""""""""""
" vista.vim
""""""""""""""""""""""""""""
function! NearestMethodOrFunction() abort
  return get(b:, 'vista_nearest_method_or_function', '')
endfunction

set statusline+=%{NearestMethodOrFunction()}

autocmd VimEnter * call vista#RunForNearestMethodOrFunction()

let g:vista_icon_indent = ["╰─▸ ", "├─▸ "]
let g:vista_default_executive = 'ctags'
let g:vista_fzf_preview = ['right:50%']
let g:vista#renderer#enable_icon = 1
let g:vista#renderer#icons = {
	\   "function": "\uf794",
	\   "variable": "\uf71b",
	\  }


""""""""""""""""""""""""""""
" indentLine
""""""""""""""""""""""""""""
let g:indentLine_enabled = 1
let g:indentLine_bgcolor_term = 202

"Ative e coloque a cor desejada como background dos caracteres
"let g:indentLine_bgcolor_gui = '#fcc9fc'
let g:indentLine_char_list = ['|', '¦', '┆', '┊']


""""""""""""""""""""""""""""
" norcalli/nvim-colorizer.lua
""""""""""""""""""""""""""""
lua require'plug-colorizer'
au VimEnter * nested ColorizerAttachToBuffer "setando o colorizer no buffer



""""""""""""""""""""""""""""
" rainbow_parentheses.vim
""""""""""""""""""""""""""""
let g:rainbow#max_level = 16
let g:rainbow#pairs = [['(', ')'], ['[', ']'], ['{', '}']]

" List of colors that you do not want. ANSI code or #RRGGBB
let g:rainbow#blacklist = [233, 234]
autocmd FileType * RainbowParentheses


verbose imap <tab>

let mapleader="\<space>"
nnoremap <leader>; A;<esc>
nnoremap <leader>ev :vsplit ~/.config/nvim/init.vim<cr>
nnoremap <leader>sv :source ~/.config/nvim/init.vim<cr>

nnoremap <c-p> :Files<cr>
nnoremap <c-f> :Ag<cr>
nnoremap <c-b> :NERDTreeToggle<cr>

nnoremap <C-a> ggvG$
vnoremap <leader>y  "+y
nnoremap <leader>Y  "+yg_
nnoremap <leader>y  "+y
nnoremap <leader>yy  "+yy

"Use alt+hjkl para intercalar entre os terminais
tnoremap <A-h> <C-\><C-n><C-w>h
tnoremap <A-j> <C-\><C-n><C-w>j
tnoremap <A-k> <C-\><C-n><C-w>k
tnoremap <A-l> <C-\><C-n><C-w>l
nnoremap <A-h> <C-w>h
nnoremap <A-j> <C-w>j
nnoremap <A-k> <C-w>k
nnoremap <A-l> <C-w>l

