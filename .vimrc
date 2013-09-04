" Start pathogen to load the plugins in .vim/bundle
execute pathogen#infect()

set laststatus=2
set t_Co=256
set ttimeoutlen=50
set encoding=utf-8

" Set identation to 4 spaces
set noai ts=4 sw=4 expandtab
" Set an 80 char column
set colorcolumn=80
" Line numbers
set number
highlight LineNr ctermfg=DarkGrey
highlight SignColumn ctermbg=black
" Rule for Makefiles to use tab
autocmd BufEnter ?akefile* set noet ts=4 sw=4
" Configure files to syntax highlight as python
autocmd BufNewFile,BufRead *.ipy set filetype=python
autocmd BufNewFile,BufRead *.pyx set filetype=python
autocmd BufNewFile,BufRead SConstruct set filetype=python
" Remove trailing spaces on save
autocmd BufWritePre * :%s/\s\+$//e
"autocmd BufWritePre *.py :%s/\s\+$//e
"autocmd BufWritePre Makefile :%s/\s\+$//e
"autocmd BufWritePre *.pyx :%s/\s\+$//e
"autocmd BufWritePre *.c :%s/\s\+$//e
"autocmd BufWritePre *.h :%s/\s\+$//e
"autocmd BufWritePre *.tex :%s/\s\+$//e
"autocmd BufWritePre *.bib :%s/\s\+$//e
"autocmd BufWritePre *.html :%s/\s\+$//e
"autocmd BufWritePre *.rst :%s/\s\+$//e
"autocmd BufWritePre *.md :%s/\s\+$//e
" For nerdcommenter
filetype plugin indent on
" Spell checking
""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Pressing \ss will toggle and untoggle spell checking
map <leader>ss :setlocal spell!<cr>
" ]s and [s to move down-up marked words
" Shortcuts using <leader> (\)
" Add word to dictionary
map <leader>sa zg
" Substitution option for marked word
map <leader>s? z=
""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Airline config
let g:airline_detect_modified=1
let g:airline_detect_paste=1
let g:airline#extensions#syntastic#enabled = 1
let g:airline#extensions#branch#symbol = '⎇  '
let g:airline_left_sep = ''
let g:airline_right_sep = ''
