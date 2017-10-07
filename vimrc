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
"configurations for async linter
"always keep sign gutter open
"let g:ale_sign_column_always = 1
"enable changing of signcolumn color
"let g:ale_change_sign_column_color = 1
"remove signcolumn colour
"highlight clear SignColumn
"set signcolumn colour when there is an error
"highlight ALESignColumnWithErrors ctermbg=37
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

