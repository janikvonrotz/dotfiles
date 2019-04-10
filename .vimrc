call plug#begin('~/.vim/plugged')

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

Plug 'mhinz/vim-startify'

Plug 'tpope/vim-fugitive'

call plug#end()

let mapleader = "-"

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
