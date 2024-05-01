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
nnoremap <M-H> 3zh
nnoremap <M-L> 3zl
" scroll off
set scrolloff=8

" argment key map
nnoremap g1 :argu1<CR>
nnoremap g2 :argu2<CR>
nnoremap g3 :argu3<CR>
nnoremap g4 :argu4<CR>
nnoremap g5 :argu5<CR>
nnoremap g6 :argu6<CR>
nnoremap g7 :argu7<CR>
nnoremap g8 :argu8<CR>
nnoremap g9 :argu9<CR>
nnoremap g10 :argu10<CR>
nnoremap g11 :argu11<CR>
nnoremap g12 :argu12<CR>
nnoremap g13 :argu13<CR>
nnoremap g14 :argu14<CR>
nnoremap g15 :argu15<CR>
nnoremap g16 :argu16<CR>
nnoremap g17 :argu17<CR>
nnoremap g18 :argu18<CR>
nnoremap g19 :argu19<CR>
nnoremap g20 :argu20<CR>
nnoremap g21 :argu21<CR>
nnoremap g22 :argu22<CR>
nnoremap g23 :argu23<CR>
nnoremap g24 :argu24<CR>
nnoremap g25 :argu25<CR>
nnoremap g26 :argu26<CR>
nnoremap g27 :argu27<CR>
nnoremap g28 :argu28<CR>
nnoremap g29 :argu29<CR>

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

"@#arglist
function! Arg_number_list()
  let l:args = argv()
  let l:max_len = len(len(l:args))
  for l:i in range(len(l:args))
    let l:prefix = l:i == argidx() ? '> ' : ': '
    echo printf('%' . l:max_len . 'd%s%s', l:i + 1, l:prefix, l:args[l:i])
  endfor
endfunction

" argd
nnoremap <M-d> :argd<CR>
" $argd
nnoremap <M-D> :$argd<CR>
" args
nnoremap <M-s> :call Arg_number_list()<CR>
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
" set statusline+=%<%f\ %h%w%m%r%{ObsessionStatus()}%=%-14.(%l,%c%V%)\ %P
"                             |-> Obsession Status

call plug#begin()
Plug 'lambdalisue/suda.vim'
Plug 'christoomey/vim-tmux-navigator'
call plug#end()
