filetype plugin on
syntax on
syntax enable
set t_Co=256
set encoding=UTF-8
"set guifont=Fira_Code_Nerd_Font:h10
"set guifont=FiraCode\ Nerd\ Font\ 10
set guifont=DroidSansMono\ Nerd\ Font\ 11
if (has("termguicolors"))
	set termguicolors
endif
set number
set relativenumber
set mouse=a
set inccommand=split
set background=dark
set expandtab       " tabs are space
set smarttab
set shiftwidth=2
set tabstop=2
set softtabstop=2   " number of spaces in tab when editing
set autoindent
set copyindent      " copy indent from the previous line
set termguicolors
set cmdheight=2        " Give more space for displaying messages.
set completeopt=noinsert,menuone,noselect
set shortmess+=c

let g:python3_host_prog='/usr/bin/python3'
let g:coc_node_path='/usr/bin/node'



""""""""""""""""""""""""""""
" Terminal Integrado
""""""""""""""""""""""""""""
set splitright
set splitbelow
" Esc para sair do modo inserção do terminal
tnoremap <Esc> <C-\><C-j>
" start terminal in insert mode
au BufEnter * if &buftype == 'terminal' | :startinsert | endif
function! OpenTerminal()
  split term://zsh
  resize 10
endfunction
nnoremap <c-j> :call OpenTerminal()<CR>


" https://github.com/junegunn/vim-plug/wiki/extra#automatically-install-missing-plugins-on-startup
" Instalando os plugins automaticamente quando abrir o neovim
autocmd VimEnter *
  \  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \|   PlugInstall --sync | q
  \| endif




