" Basic
filetype plugin indent on
set autoindent expandtab shiftwidth=4 softtabstop=4 tabstop=4
set backspace=indent,eol,start
set clipboard=unnamed,unnamedplus
set encoding=utf8
set hlsearch ignorecase incsearch smartcase
set laststatus=0 ruler rulerformat=%50(%=%<%F%m\ ›\ %{getfsize(@%)}B\ \›\ %l/%L:%v%)
set lazyredraw nocursorline ttyfast
set listchars=eol:¶,trail:•,tab:▸\  showbreak=¬\
set mouse=a
set nobackup noswapfile nowritebackup undofile undodir=~/.vim/undo undolevels=99999
set nowrap
set showcmd
set showmatch
set term=xterm-256color
set wildmenu wildmode=longest:full,full wildcharm=<Tab>
syntax on
set nu rnu

" Colors
color monokai
hi Normal guibg=NONE ctermbg=NONE
hi Normal guifg=NONE ctermfg=NONE

" Vim-Plug config
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
"    Plug 'yuezk/vim-js'
"    Plug 'rust-lang/rust.vim'
call plug#end()

let g:coc_disable_startup_warning=1