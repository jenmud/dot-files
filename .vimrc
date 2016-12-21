 " vim-powerline settings
set nocompatible " Disable vi-compatibility
set laststatus=2 " Always show the statusline
set encoding=utf-8 " Necessary to show Unicode glyphs
set t_Co=256 " Explicitly tell Vim that the terminal supports 256 colors
" autocmd CursorMoved * exe printf('match IncSearch /\V\<%s\>/', escape(expand('<cword>'), '/\'))

" Create a cursor crosshair
hi CursorLine   cterm=NONE ctermbg=235
hi CursorColumn cterm=NONE ctermbg=235
set cursorline
set cursorcolumn

set number

autocmd FileType python set foldmethod=indent
autocmd FileType python set list
autocmd FileType python setlocal shiftwidth=4 tabstop=4 expandtab


set colorcolumn=80
autocmd Filetype html setlocal tabstop=2 shiftwidth=2 expandtab
autocmd Filetype cucumber setlocal tabstop=2 shiftwidth=2 expandtab

execute pathogen#infect()
let g:solarized_termcolors=256
filetype plugin indent on
syntax on
colorscheme solarized
runtime! plugin/sensible.vim

autocmd FileType go let g:go_highlight_functions = 1
autocmd FileType go let g:go_highlight_methods = 1
autocmd FileType go let g:go_highlight_fields = 1
autocmd FileType go let g:go_highlight_types = 1
autocmd FileType go let g:go_highlight_operators = 1
autocmd FileType go let g:go_highlight_build_constraints = 1
let g:go_fmt_command = "goimports"

" set background=light
set bg=dark

" set rtp+=$GOPATH/src/github.com/golang/lint/misc/vim
" autocmd BufWritePost,FileWritePost *.go execute 'Lint' | cwindow

set spell
