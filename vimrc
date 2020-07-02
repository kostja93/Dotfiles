set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'morhetz/gruvbox'
Plugin 'jremmen/vim-ripgrep'
Plugin 'kchmck/vim-coffee-script'
Plugin 'airblade/vim-gitgutter'
Plugin 'thoughtbot/vim-rspec'
Plugin 'posva/vim-vue'
Plugin 'ryanoasis/vim-devicons'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'leafgarland/typescript-vim'
Plugin 'peitalin/vim-jsx-typescript'
Plugin 'martinda/Jenkinsfile-vim-syntax'
Plugin 'slim-template/vim-slim'
Plugin 'christoomey/vim-tmux-navigator'

call vundle#end()            " required
filetype plugin indent on    " required

let mapleader = " "
set encoding=UTF-8
set splitright
set splitbelow
set tabstop=2                     " a tab is two spaces
set shiftwidth=2                  " an autoindent (with <<) is two spaces
set expandtab                     " use spaces, not tabs
set hlsearch                      " activate search result highlighting
set wildignore+=tags,doc,tmp,log,node_modules
set number relativenumber
set noswapfile
set nowrap
set foldmethod=indent   
set foldnestmax=10
set nofoldenable
set mouse=a
set incsearch
set colorcolumn=80
highlight ColorColumn ctermbg=0 guibg=lightgrey

autocmd BufWritePre *.rb :%s/\s\+$//e
autocmd BufWritePre *.yml :%s/\s\+$//e

colorscheme gruvbox
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
nnoremap <C-[> :bp<CR>
nnoremap <C-]> :bn<CR>
nnoremap <Leader>a :Rg<Space>
nnoremap <Leader>e :ls<cr>:b<space>
nnoremap <Leader>bd :bufdo bd<CR><CR>
nnoremap <Leader>pp :!(mdpdf % \| grep .pdf \| xargs open)<CR>

let g:airline_theme='powerlineish'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
