set nocompatible
set number

filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Mapleader
let mapleader="\<Space>"

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-rails'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-commentary'
Plugin 'thoughtbot/vim-rspec'
Plugin 'fatih/vim-go'
Plugin 'christoomey/vim-tmux-navigator'

call vundle#end()            " required
filetype plugin indent on    " required

" Pre-populate a split command with the current directory
nmap <leader>v :vnew <C-r>=escape(expand("%:p:h"), ' ') . '/'<cr>

" Edit your vimrc in a new tab
nmap <leader>vi :tabedit ~/.vimrc<cr>

" Copy the entire buffer into the system register
nmap <leader>co ggVG*y

" Edit the db/schema.rb Rails file in a split
nmap <leader>sc :split db/schema.rb<cr>

" Move up and down by visible lines if current line is wrapped
nmap j gj
nmap k gk

" Command aliases for typoed commands (accidentally holding shift too long)
command! Q q " Bind :Q to :q
command! Qall qall
command! QA qall
command! E e

" Make CtrlP use ag for listing the files. Way faster and no useless files.
let g:ctrlp_user_command = 'ag %s -l --hidden --nocolor -g ""'
let g:ctrlp_use_caching = 0

" Solarized scheme
syntax enable
set background=dark
colorscheme solarized

" Ruler 80 columns
set colorcolumn=80

" automatically rebalance windows on vim resize
autocmd VimResized * :wincmd =

" " zoom a vim pane, <C-w>= to rebalance
nnoremap <leader>- :wincmd _<cr>:wincmd \|<cr>
nnoremap <leader>= :wincmd =<cr>

let g:VtrStripLeadingWhitespace = 0
let g:VtrClearEmptyLines = 0
let g:VtrAppendNewline = 1
