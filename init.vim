"" w'ere using VI Improved, use it then. Just a conf since this should happen auto
" asdfsfa
set nocompatible

" Pluggins
call plug#begin()

Plug 'sheerun/vim-polyglot' "Better Syntax support 
Plug 'scrooloose/NERDTree' "File explorer 
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'dracula/vim', {'as':'dracula'}
Plug 'jiangmiao/auto-pairs' "Auto pairs for '(' '[' '{' 
Plug 'https://github.com/vim-airline/vim-airline' "Vim airline
Plug 'https://github.com/tpope/vim-commentary' "For commenting gcc & gc
Plug 'ryanoasis/vim-devicons' "Devicons
Plug 'dracula/vim',{'as':'dracula'} "Theme
Plug 'vim-airline/vim-airline-themes' "Airline Themes
Plug 'tpope/vim-fugitive'

call plug#end()


let g:airline_powerline_fonts = 1


" Search while I type, with highlighting, only using case if i do
set ignorecase
set smartcase
set incsearch
set hls




" Shift/Tab
filetype plugin indent on


" vim.wikia.com/wiki/indenting_source_code
" improve tab functionality
set smartindent smarttab noexpandtab



" Size of tab
set tabstop=4 shiftwidth=4



" no vertical scroll
set nowrap
set textwidth=0




" Randomness
" Always show some kind of status
set laststatus=2
set statusline=
set statusline+=%f
set statusline+=%r
set statusline+=%m
set statusline+=%=
set statusline+=%y
set statusline+=\ %p%%
set statusline+=\ %l:%c



" turn on line numbering.
set number
set visualbell errorbells ruler



" Joining the darkside...
set mouse=a



" Put some vertical space around the cursor
set scrolloff=2



" Fix trailing whitespace so they are periods
set list
set listchars=tab:\|\ ,trail:.



" Make non text more visible
highlight NonText guifg=#4a4a59 guibg=#4a4a59



" Setup Persistent undo
set undofile
set undodir=~/.undo



" Key maps
map <leader>n :NERDTreeToggle <CR>
map <C-t> :tabnew <CR>
map <C-/> <Plug>NERDComToggleComment!


" Change colorscheme from default to solarized
syntax enable
set background=dark
:colorscheme dracula



" Automatically create .backup directory, writable by the group.
if filewritable("~/") && ! filewritable("~/.backup")
	silent execute '!umask 002; mkdir ~/.backup'
endif
set backupdir=~/.backup directory=~/.backup



" CtrlP Fixes
let g:ctrlp_max_files=0
let g:ctrlp_max_depth=40
let g:ctrlp_working_path_mode = 'a'
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git\|optimize'
