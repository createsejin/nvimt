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
"nnoremap <F3> :set hlsearch!<CR>

" cursor blinking
set guicursor=n-v-c:block,i-ci-ve:ver25,r-cr:hor20,o:hor50
		  \,a:blinkwait700-blinkoff400-blinkon250-Cursor/lCursor
		  \,sm:block-blinkwait175-blinkoff150-blinkon175

if exists('$TMUX')
  let &t_SI = "\ePtmux;\e\e[5 q\e\\"
  let &t_EI = "\ePtmux;\e\e[2 q\e\\"
else
  let &t_SI = "\e[5 q"
  let &t_EI = "\e[2 q"
endif

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
" scroll off
set scrolloff=8

" argment key map
nnoremap <F1> :argu1<CR>
nnoremap <F2> :argu2<CR>
nnoremap <F3> :argu3<CR>
nnoremap <F4> :argu4<CR>
nnoremap <F5> :argu5<CR>
nnoremap <F6> :argu6<CR>
nnoremap <F7> :argu7<CR>
nnoremap <F8> :argu8<CR>
nnoremap <F9> :argu9<CR>
nnoremap <F10> :argu10<CR>
nnoremap <F11> :argu11<CR>
nnoremap <F12> :argu12<CR>
nnoremap <F13> :argu13<CR>
nnoremap <F14> :argu14<CR>
nnoremap <F15> :argu15<CR>
nnoremap <F16> :argu16<CR>
nnoremap <F17> :argu17<CR>
nnoremap <F18> :argu18<CR>
nnoremap <F19> :argu19<CR>
nnoremap <F20> :argu20<CR>

" :n :N
nnoremap <M-n> :n<CR>
nnoremap 2<M-n> :2n<CR>
nnoremap 3<M-n> :3n<CR>
nnoremap 4<M-n> :4n<CR>
nnoremap 5<M-n> :5n<CR>
nnoremap 6<M-n> :6n<CR>
nnoremap 7<M-n> :7n<CR>
nnoremap <M-p> :N<CR>
nnoremap 2<M-p> :2N<CR>
nnoremap 3<M-p> :3N<CR>
nnoremap 4<M-p> :4N<CR>
nnoremap 5<M-p> :5N<CR>
nnoremap 6<M-p> :6N<CR>
nnoremap 7<M-p> :7N<CR>

" argd
nnoremap <M-d> :argd<CR>
" $argd
nnoremap <M-D> :$argd<CR>
" args
nnoremap <M-s> :args<CR>
" arga
nnoremap <M-a> :arga<CR>
" $arga
nnoremap <M-A> :$arga<CR>
" arge
nnoremap <M-e> :arge 
" $arge
nnoremap <M-E> :$arge 
" last
nnoremap <M-b> :la<CR>
" first
nnoremap <M-f> :fir<CR>

autocmd BufEnter * file

" goto end of the line in insert mode
inoremap <C-e> <C-o>$

" handle tab
set tabstop=2 " tab width
set shiftwidth=2 " indent size
set expandtab " use space to instead the tab character
set smarttab

" statusline
set statusline+=%<%f\ %h%w%m%r%{ObsessionStatus()}%=%-14.(%l,%c%V%)\ %P
"                             |-> Obsession Status

call plug#begin()
Plug 'lambdalisue/suda.vim'
Plug 'christoomey/vim-tmux-navigator'
Plug 'tpope/vim-obsession'
call plug#end()
