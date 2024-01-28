packadd vim-jetpack
call jetpack#begin()
Jetpack 'tani/vim-jetpack', {'opt': 1}
Jetpack 'https://github.com/dense-analysis/ale'
Jetpack 'junegunn/fzf.vim'
Jetpack 'junegunn/fzf', { 'do': {-> fzf#install()} }
Jetpack 'dracula/vim', { 'as': 'dracula' }
call jetpack#end()

set relativenumber
set number
set cursorline
syntax enable
set hlsearch
set incsearch
set smartindent
set clipboard+=unnamed
set wildmenu
set termguicolors
colorscheme dracula
nnoremap <C-"> "_

let g:ale_fixers = {
\   '*': ['remove_trailing_lines', 'trim_whitespace'],
\}
