
" map leader to space
let mapleader = " " " map leader to Space

:set arabicshape
:set number	
:set encoding=utf-8
:set relativenumber
:set autoindent
:set tabstop=4
:set shiftwidth=4
:set smarttab
:set softtabstop=4
:set mouse=a
:set nohlsearch
:set signcolumn=yes
:set scrolloff=8

call plug#begin()

Plug 'https://github.com/vim-airline/vim-airline' " Status bar
Plug 'https://github.com/preservim/nerdtree' " NerdTree
Plug 'https://github.com/ap/vim-css-color' " CSS Color Preview
Plug 'https://github.com/ryanoasis/vim-devicons' " Developer Icons
Plug 'terryma/vim-multiple-cursors' " Multiple cursors
Plug 'https://github.com/neoclide/coc.nvim'  " Auto Completion
Plug 'https://github.com/jiangmiao/auto-pairs' " for auto pairing brackets
Plug 'projekt0n/github-nvim-theme' " hey i like this theme
Plug 'https://github.com/tpope/vim-commentary' " For Commenting gcc & gc
Plug 'leafgarland/typescript-vim' " react syntax 
Plug 'peitalin/vim-jsx-typescript' " react syntax 
Plug 'pantharshit00/vim-prisma' " prisma 

" fzf
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'

call plug#end()

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ CheckBackspace() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif


" Remaps for nerdtree
nnoremap <leader>ef :NERDTreeFocus<cr>
nnoremap <leader>et :NERDTreeToggle<cr>

" show hidden files in nerdtree explorer
let NERDTreeShowHidden=1

nnoremap <C-s> :CocCommand prettier.forceFormatDocument<CR>:w<CR>

" set theme
colorscheme github_dark_default

" fzf keybindings
nnoremap <leader>ff :Files<cr>
nnoremap <leader>fg :GFiles<cr>
nnoremap <leader>sf :Rg <cr>

" remaps for split win stuff
nnoremap <leader>w <C-w>
