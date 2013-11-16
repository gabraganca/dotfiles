" Set identation to 4 spaces
set noai ts=4 sw=4 expandtab
" Set 256 colors
set t_Co=256
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
" Set up colors for spell highlighting
hi SpellBad term=reverse ctermfg=white ctermbg=darkred guifg=#ffffff guibg=#7f0000 gui=underline
hi SpellCap guifg=#ffffff guibg=#7f007f
hi SpellRare ctermfg=black ctermbg=yellow guifg=#ffffff guibg=#00007f gui=underline
hi SpellLocal term=reverse ctermfg=black ctermbg=darkgreen guifg=#ffffff guibg=#7f0000 gui=underline
" Spell check git commit messages
autocmd Filetype gitcommit setlocal spell textwidth=72
""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Copy to clipboard on Visual mode
vnoremap <C-c> "+y
" Paste to vim"
map <C-p> "+p
"Highlight thecursor line
:hi CursorLine   cterm=NONE ctermbg=darkred ctermfg=white guibg=darkred guifg=white
hi CursorColumn cterm=NONE ctermbg=darkred ctermfg=white guibg=darkred guifg=white
:nnoremap <Leader>c :set cursorline! cursorcolumn!<CR>

" Press F4 to toggle highlighting on/off, and show current value.
:noremap <F4> :set hlsearch! hlsearch?<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugins configurations
""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Pathogen
execute pathogen#infect()
" Airline config
set laststatus=2
let g:airline#extensions#syntastic#enabled = 1
let g:airline#extensions#branch#symbol = '⎇  '
let g:airline_left_sep = ''
let g:airline_right_sep = ''
