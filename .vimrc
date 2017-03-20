syntax on           " pretty
colorscheme badwolf " looks good on black
set tabstop=4       " number of visual spaces per TAB
set softtabstop=4   " number of spaces in tab when editing
set expandtab       " tabs are spaces
set cursorline      " highlight current line
filetype indent on  " make python easier
set lazyredraw      " nice for large files or slow SSH
set incsearch           " search as characters are entered
set hlsearch            " highlight matches
let mapleader=","       " leader is comma

" turn off search highlight with ,<space>
nnoremap <leader><space> :nohlsearch<CR>

" make .sls indent as python

augroup configgroup
        autocmd!
        autocmd FileType python setlocal tabstop=2 softtabstop=2
augroup END

augroup filetypedetect
    au! BufRead,BufNewFile *.sls      setfiletype python
augroup END

highlight EmptyEnd ctermbg=red guibg=red
match EmptyEnd /\($\n\s*\)\+\%$/

