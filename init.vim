" My vimrc
call plug#begin()
	Plug 'chriskempson/base16-vim'
	Plug 'itchyny/lightline.vim'	
	Plug 'tpope/vim-fugitive'
	Plug 'ctrlpvim/ctrlp.vim'
	Plug 'plasticboy/vim-markdown'
	Plug 'pangloss/vim-javascript'
	Plug 'rust-lang/rust.vim'
	Plug 'racer-rust/vim-racer'
	Plug 'timonv/vim-cargo'
	Plug 'jiangmiao/auto-pairs'
	Plug 'amdt/vim-niji'
	Plug 'udalov/kotlin-vim'
	Plug 'preservim/nerdcommenter'
call plug#end()

" default behavior
set nocompatible
filetype plugin indent on
set hlsearch
set tabstop=4
set shiftwidth=4
set noexpandtab	
set hidden
let mapleader = "\\"
let maplocalleader = "'"

" Look and feel
set t_Co=256
set background=dark
if filereadable(expand("~/.vimrc_background"))
	let base16colorspace=256
	source ~/.vimrc_background
endif
colorscheme base16-tomorrow-night
let g:lightline = {
      \ 'colorscheme': 'Tomorrow_Night',
	  \ 'active': {
	  \    'left': [['mode', 'paste'],
	  \ 			['gitbranch', 'readonly', 'filename', 'modified']] 
	  \ }, 
	  \ 'component_function': {
      \   'gitbranch': 'FugitiveHead'
      \ },
	  \ }
set laststatus=2
set noshowmode
if has("gui_win32")
	set guifont=Consolas:h10
	set guioptions-=m "turn off menu bar
	set guioptions-=T "turn off toolbar
endif

