execute pathogen#infect()

syntax on

set expandtab
set tabstop=4
set shiftwidth=4
set number

set ignorecase
set backup
set backupdir=.backup/,/tmp//

" highlight search terms
set hlsearch

"filetype plugin on

autocmd BufEnter * let &titlestring = ' ' . expand("%:t")
set title

augroup resCur
    autocmd!
    autocmd BufReadPost * call setpos(".", getpos("'\""))
augroup END

"autocmd FileType * setlocal formatoptions-=c formatoptions-=o formatoptions-=r

set encoding=utf-8

"Spell-check
set spelllang=en
"set spellfile=~/.vimspell_en.utf-8.add
hi clear SpellBad
hi SpellBad cterm=underline,bold ctermbg=darkgray
