" install vim plug
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" vim plug config
call plug#begin('~/.vim/plugged')

" fuzzy search
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

" modern start window
Plug 'mhinz/vim-startify'

" git commands
Plug 'tpope/vim-fugitive'

" monokai theme
Plug 'crusoexia/vim-monokai'

" auto save files
Plug '907th/vim-auto-save'

" miscellaneous  vim scripts
Plug 'xolox/vim-misc'

" auto save sessions
Plug 'xolox/vim-session'

call plug#end()

" enable auto save files
let g:auto_save = 1

" enable auto save session
let g:session_autosave = 'yes'

" set session directory to current directory
let g:session_directory = '.'

" set leader key
let mapleader = "-"

" common key bindings
nmap <Leader>d "_d
nmap <Leader>dd "_dd
nmap <Leader>q :q!<CR>
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
