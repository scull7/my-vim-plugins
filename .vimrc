
syntax enable
filetype plugin indent on

set relativenumber
set colorcolumn=80

" https://github.com/dracula/vim/issues/161
packadd! dracula | colorscheme dracula

" Vim Signify
set updatetime=100

" FZF Configuration
set rtp+=/usr/local/opt/fzf

noremap <C-p> :Files<CR>
