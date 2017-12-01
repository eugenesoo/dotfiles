call plug#begin('~/.vim/plugged')
Plug 'altercation/vim-colors-solarized'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'w0rp/ale'
Plug 'leshill/vim-json'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'editorconfig/editorconfig-vim'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-commentary'
Plug 'terryma/vim-multiple-cursors'
Plug 'ervandew/supertab'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-eunuch'
Plug 'jiangmiao/auto-pairs'
Plug 'drn/zoomwin-vim'
Plug 'wakatime/vim-wakatime'
call plug#end()
"add column number
set number
"make searches case-insensitive
set ignorecase
"change color theme to solarized
syntax enable
set background=dark
colorscheme solarized
"set updatetime to 250ms
set updatetime=250
"only enable javascript eslint linter for ale
let g:ale_linters = {
\  'javascript': ['eslint']
\}
"auto fix errors on save
let g:ale_fix_on_save = 1
"set fixer to eslint
let g:ale_fixers = {
\  'javascript': ['eslint'],
\}
"set solarized theme for vim-airline
let g:airline_theme='solarized'
"hide the commandline and use vim-airline instead
set noshowmode
"let vim-airline handle errors in statusline
let g:airline#extensions#ale#enabled = 1
"set tab/spaces default
set tabstop=2
"when indenting with '>', use 2 space width
set shiftwidth=2
"on pressing tab, insert 2 space
set expandtab
" Disable Arrow keys in Escape mode
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>
" Disable Arrow keys in Insert mode
imap <up> <nop>
imap <down> <nop>
imap <left> <nop>
imap <right> <nop>
" mouse enable in vim
set mouse=a
" set clipboard to macosx clipboard
set clipboard=unnamed
" let nerdtree show hidden files
let NERDTreeShowHidden=1
