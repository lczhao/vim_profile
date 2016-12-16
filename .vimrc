set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim

" Plugins
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

Plugin 'ctrlpvim/ctrlp.vim'

Plugin 'isRuslan/vim-es6'

Plugin 'scrooloose/syntastic'

Plugin 'scrooloose/NerdTree'

Plugin 'airblade/vim-gitgutter'

call vundle#end()
filetype plugin indent on

syntax on

set laststatus=2

" airline settings
set encoding=utf-8
set t_Co=256
let g:airline_powerline_fonts=1
let g:airline#extensions#tabline#enabled=1

" status line set up
" set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
" set statusline+=%*

" syntastic set up
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_loc_list_height = 5
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 1
" let g:syntastic_javascript_eslint_exec = 'node_modules/.bin/eslint'
let g:syntastic_javascript_checkers = ['eslint']

let g:syntastic_error_symbol = '❌'
let g:syntastic_style_error_symbol = '⁉️'
let g:syntastic_warning_symbol = '⚠️'
let g:syntastic_style_warning_symbol = '💩'

highlight link SyntasticErrorSign SignColumn
highlight link SyntasticWarningSign SignColumn
highlight link SyntasticStyleErrorSign SignColumn
highlight link SyntasticStyleWarningSign SignColumn
" highlight SignColumn guibg=darkgrey

" CtrlP setup
let g:ctrlp_map='<c-p>'
let g:ctrlp_working_path_mode='a'
let g:ctrlp_custom_ignore='node_modules\|git\|DS_Store'

" Gitgutter stepup
" let g:gitgutter_realtime=0
" let g:gitgutter_eager=0
let g:gitgutter_sign_column_always = 1

" misc setup
set hlsearch
set number
set showtabline=2
set autoindent
set shiftwidth=2
set tabstop=2
set expandtab
set mouse=a
set ignorecase
set list
set listchars=tab:>-,trail:.

" remove trailing space
autocmd BufWritePre * %s/\s\+$//e
