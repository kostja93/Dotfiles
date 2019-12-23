set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'morhetz/gruvbox'
Plugin 'rking/ag.vim'
Plugin 'kchmck/vim-coffee-script'
Plugin 'airblade/vim-gitgutter'
Plugin 'leafgarland/typescript-vim'
Plugin 'thoughtbot/vim-rspec'
Plugin 'posva/vim-vue'
Plugin 'ryanoasis/vim-devicons'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'junegunn/goyo.vim'
Plugin 'lifepillar/vim-solarized8'

call vundle#end()            " required
filetype plugin indent on    " required

set encoding=UTF-8
set splitright
set splitbelow
set tabstop=2                     " a tab is two spaces
set shiftwidth=2                  " an autoindent (with <<) is two spaces
set expandtab                     " use spaces, not tabs
set hlsearch                      " activate search result highlighting
set wildignore+=tags,doc,tmp,log
set number relativenumber
set nocompatible      " Do not be compatible with Vi - be iMproved
set noswapfile
set nowrap
set foldmethod=indent   
set foldnestmax=10
set nofoldenable
set mouse=a
set tags=./tags;
autocmd BufWritePre *.rb :%s/\s\+$//e
autocmd BufWritePre *.yml :%s/\s\+$//e

colorscheme gruvbox
map <C-n> :NERDTreeToggle<CR>
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
nnoremap <Leader>- :bp<CR>
nnoremap <Leader>= :bn<CR>
nnoremap <Leader>a :Ag!<Space>
nnoremap <Leader>e :ls<cr>:b<space>

let g:airline_theme='powerlineish'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
