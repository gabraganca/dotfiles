" Vundle Configuration

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Keep Plugin commands between vundle#begin/end.
Plugin 'tpope/vim-fugitive'
Plugin 'ervandew/supertab'
Plugin 'davidhalter/jedi-vim'
Plugin 'vim-airline/vim-airline'
Plugin 'flazz/vim-colorschemes'
Plugin 'scrooloose/syntastic'
Plugin 'godlygeek/tabular'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" Set identation to 4 spaces
set noai ts=4 sw=4 expandtab

""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Colors
""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Set 256 colors
set t_Co=256
colorscheme desert

" Set highlight color
hi Search cterm=NONE ctermfg=yellow ctermbg=blue

"Set color for Visual mode
hi Visual ctermfg=yellow ctermbg=blue

" Set up colors for spell highlighting
hi SpellBad term=reverse ctermfg=white ctermbg=darkred guifg=#ffffff guibg=#7f0000 gui=underline
hi SpellCap guifg=#ffffff guibg=#7f007f
hi SpellRare ctermfg=black ctermbg=yellow guifg=#ffffff guibg=#00007f gui=underline
hi SpellLocal term=reverse ctermfg=black ctermbg=darkgreen guifg=#ffffff guibg=#7f0000 gui=underline

"Set color ofr cursor highlight
:hi CursorLine   cterm=NONE ctermbg=darkred ctermfg=white guibg=darkred guifg=white
hi CursorColumn cterm=NONE ctermbg=darkred ctermfg=white guibg=darkred guifg=white


""""""""""""""""""""""""""""""""""""""""""""""""""""""
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
" Spell check git commit messages
autocmd Filetype gitcommit setlocal spell textwidth=72

""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Copy to clipboard on Visual mode
vnoremap <C-c> "+y
" Paste to vim"
map <C-p> "+p

""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Highlight the cursor line
:nnoremap <Leader>c :set cursorline! cursorcolumn!<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Press F4 to toggle highlighting on/off, and show current value.
:noremap <F4> :set hlsearch! hlsearch?<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Split configuration
"We can use different key mappings for easy navigation between splits to save 
"a keystroke. So instead of ctrl-w then j, it's just ctrl-j:

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Quick save
noremap <Leader>s :update<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""""


""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugins configurations
""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Airline config
set laststatus=2
let g:airline#extensions#syntastic#enabled = 1
let g:airline#extensions#branch#symbol = '⎇  '
let g:airline_left_sep = ''
let g:airline_right_sep = ''


""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Insert empty line in normald mode
""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <C-J> m`o<Esc>``
nnoremap <C-K> m`O<Esc>``
