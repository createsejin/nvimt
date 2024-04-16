set number
set relativenumber
set shell=/usr/bin/zsh
syntax on
set nowrap

highlight Visual guibg=grey guifg=black
highlight Visual ctermbg=grey ctermfg=black
highlight Cursor guibg=grey guifg=black
highlight Cursor ctermbg=grey ctermfg=black
nnoremap <esc> :noh<CR>
nnoremap <F3> :set hlsearch!<CR>

" cursor blinking
set guicursor=n-v-c:block,i-ci-ve:ver25,r-cr:hor20,o:hor50
		  \,a:blinkwait700-blinkoff400-blinkon250-Cursor/lCursor
		  \,sm:block-blinkwait175-blinkoff150-blinkon175

set hlsearch
set incsearch
"set autochdir

" exit terminal mode
tnoremap <C-x> <C-\><C-n>

" move panel
tnoremap <C-h> <C-\><C-N><C-w>h
tnoremap <C-j> <C-\><C-N><C-w>j
tnoremap <C-k> <C-\><C-N><C-w>k
tnoremap <C-l> <C-\><C-N><C-w>l
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" horizontal scroll
nnoremap <M-h> 4zh
nnoremap <M-l> 4zl

" handle tab
set tabstop=2 " tab width
set shiftwidth=2 " indent size
set expandtab " use space to instead the tab character
set smarttab

" set cursor shape change
set -as terminal-overrides '*:Ss=\E[%p1%d q:Se=\E[2 q'

call plug#begin()
Plug 'lambdalisue/suda.vim'
Plug 'christoomey/vim-tmux-navigator'
Plug 'tpope/vim-obsession'
call plug#end()
