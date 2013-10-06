" Set identation to 4 spaces
set noai ts=4 sw=4 expandtab
" Set an 80 char column
set colorcolumn=80
" Rule for Makefiles to use tab
autocmd BufEnter ?akefile* set noet ts=4 sw=4
" Configure .ipy files to syntax highlight as python
autocmd BufNewFile,BufRead *.ipy set filetype=python
" Remove trailing spaces on save
autocmd BufWritePre *.py :%s/\s\+$//e
autocmd BufWritePre Makefile :%s/\s\+$//e
autocmd BufWritePre *.pyx :%s/\s\+$//e
autocmd BufWritePre *.c :%s/\s\+$//e
autocmd BufWritePre *.h :%s/\s\+$//e
autocmd BufWritePre *.tex :%s/\s\+$//e
autocmd BufWritePre *.bib :%s/\s\+$//e
autocmd BufWritePre *.html :%s/\s\+$//e
autocmd BufWritePre *.rst :%s/\s\+$//e
autocmd BufWritePre *.md :%s/\s\+$//e
" For nerdcommenter
filetype plugin indent on
execute pathogen#infect()
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
" Spell check git commit messages
autocmd Filetype gitcommit setlocal spell textwidth=72
""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Copy to clipboard on Visual mode
vnoremap <C-c> "+y
" Paste to vim"
map <C-p> "+p
