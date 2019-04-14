" install vim plug
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" vim plug config
call plug#begin('~/.vim/plugged')

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

Plug 'mhinz/vim-startify'

Plug 'tpope/vim-fugitive'

Plug 'crusoexia/vim-monokai'

call plug#end()

" set leader key
let mapleader = "-"

" code style
set number
syntax on
colorscheme monokai

" fzf key bindings
nmap <Leader>f :GFiles<CR>
nmap <Leader>F :Files<CR>

nmap <Leader>b :Buffers<CR>
nmap <Leader>h :History<CR>

nmap <Leader>t :BTags<CR>
nmap <Leader>T :Tags<CR>

nmap <Leader>l :BLines<CR>
nmap <Leader>L :Lines<CR>
nmap <Leader>m :Marks<CR>

nmap <Leader>a :Ag<Space>

nmap <Leader>C :Commands<CR>

nmap <Leader>H :History:<CR>
nmap <Leader>/ :History/<CR>

nmap <Leader>M :Maps<CR>

nmap <Leader>s :Filetypes<CR>

" open new splits on the bottom right
set splitbelow
set splitright
