call plug#begin('~/.config/nvim/plugged')
Plug 'kyazdani42/nvim-web-devicons' 		"File Icons
Plug 'kyazdani42/nvim-tree.lua'					"File Epxlorer(neovim-nightly)
Plug 'jiangmiao/auto-pairs'							"autopairs
Plug 'neoclide/coc.nvim', {
			\'branch': 'release'
			\}																"Intellisense
Plug 'dense-analysis/ale'								"Check Syntax
Plug 'junegunn/rainbow_parentheses.vim' "Highlight ()
Plug 'norcalli/nvim-colorizer.lua'			"Color Highlight
Plug 'Yggdroot/indentLine'							"IndentLine

Plug 'vim-airline/vim-airline'					"StatusBar / TabLine
Plug 'vim-airline/vim-airline-themes'		"Temas parea StatusBar
Plug 'glepnir/oceanic-material'					"Tema	-	Oceanic Material
"Plug 'hzchirs/vim-material'						 "Tema - Material
Plug 'joshdick/onedark.vim'							"Tema - OneDark

Plug 'iamcco/markdown-preview.nvim', {
			\ 'do': 'cd app && yarn install'
			\ }																" Preview Markdown
Plug 'junegunn/goyo.vim'
Plug 'preservim/nerdcommenter'					"Comentarios

Plug 'junegunn/fzf', {
			\ 'dir': '~/.fzf',
			\ 'do': './install --all'
			\}
Plug 'junegunn/fzf.vim'									" Fuzzy Finder - Busca

Plug 'glepnir/dashboard-nvim'						" StartScreen

Plug 'ryanoasis/vim-devicons'
call plug#end()
