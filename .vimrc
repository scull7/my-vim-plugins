
syntax enable
filetype plugin indent on

set number
set relativenumber
set colorcolumn=81

" https://github.com/dracula/vim/issues/161
packadd! dracula | colorscheme dracula

" Vim Signify
" default updatetime 4000ms is not good for async update
set updatetime=100

" FZF Configuration
set rtp+=/usr/local/opt/fzf

noremap <C-p> :Files<CR>

" ALE Configuration
let g:ale_linters = {
\ 	'javascript': ['eslint'],
\ 	'rust': ['analyzer'],
\ 	'reason': [ '/Users/nathansculli/utils/rls-osx/reason-language-server' ],
\}

let g:ale_fixers = {
\   '*': ['remove_trailing_lines', 'trim_whitespace'],
\		'javascript': ['prettier', 'eslint'],
\   'reason': ['prettier'],
\ 	'rust': ['rustfmt'],
\}

let g:ale_fix_on_save = 1
let g:ale_completion_enabled = 1
let g:ale_completion_autoimport = 1
let g:ale_sign_column_always = 1
