filetype plugin on
syntax on
syntax enable
set t_Co=256
set encoding=UTF-8
set guifont=Fira_Code:h10
if (has("termguicolors"))
	set termguicolors
endif
set number
set relativenumber
set mouse=a
set inccommand=split
set background=dark
set tabstop=2
set smarttab
set shiftwidth=2
set termguicolors
set cmdheight=2        " Give more space for displaying messages.
set completeopt=noinsert,menuone,noselect
set shortmess+=c

let g:python3_host_prog='/usr/bin/python3'
let g:coc_node_path='/usr/bin/node'
