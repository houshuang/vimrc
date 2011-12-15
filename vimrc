set guifont=Inconsolata:h14
if has("autocmd")
  " Enable file type detection.
  " Use the default filetype settings, so that mail gets 'tw' set to 72,
  " 'cindent' is on in C files, etc.
  " Also load indent files, to automatically do language-dependent indenting.
  filetype plugin indent on
  " ...
endif
call pathogen#infect()

" change light/dark background
call togglebg#map("<F5>")

" define leader
let mapleader = ","

" line numbers
set nu

" don't want menu and scrollbar
set guioptions=aAce

map <leader>t :FuzzyFinderTextMate<CR>

" ConqueTerm
let g:ConqueTerm_ReadUnfocused = 1
let g:ConqueTerm_CWInsert = 1
let g:ConqueTerm_InsertOnEnter = 1
let g:ConqueTerm_SendVisKey = '<leader>x'
let g:ConqueTerm_TERM = 'xterm'
vnoremap <leader>/ :ConqueTermVSplit irb  "\|normal <cr>

set autochdir

cnoremap s/ s/\v
nnoremap / /\v

" trying to turn off the bell
set vb 

" tab navigation
map <A-1>  1gt
map <A-2>  2gt
map <A-3>  3gt
map <A-4>  4gt
map <A-5>  5gt
map <A-6>  6gt
map <A-7>  7gt
map <A-8>  8gt
map <A-9>  9gt
map <A-0>  10gt

set guitablabel=(%N%M)\ %f

nnoremap  call pathogen#infect() <Space> :
inoremap ;; <Esc>

" manage buffers better http://items.sjbach.com/319/configuring-vim-right
set hidden

" longer cmd history
set history=1000

" use ' to jump to line and col set by m
nnoremap ' `
nnoremap ` '

set showcmd

" strip all trailinghite space
nnoremap <leader>W :%s/\s\+$//<cr>:let @/=''<CR>

" search w ack
nnoremap <leader>a :Ack<space>

" reload vimrc
nnoremap <leader>R :source $MYVIMRC<cr>

" reselect text that was just pasted
nnoremap <leader>v V`]

" open .vimrc in vertically split window
nnoremap <leader>ev <C-w><C-v><C-l>:e $MYVIMRC<cr>

" open vertical split and move to it
nnoremap <leader>w <C-w>v<C-w>l
set lazyredraw

" At least let yourself know what mode you're in
set showmode

" Enable enhanced command-line completion. Presumes you have compiled
" with +wildmenu.  See :help 'wildmenu'
set wildmenu

" move around windows
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
" Don't update the display while executing macros
" close window commands
noremap <silent> ,cj :wincmd j<cr>:close<cr>
noremap <silent> ,ck :wincmd k<cr>:close<cr>
noremap <silent> ,ch :wincmd h<cr>:close<cr>
noremap <silent> ,cl :wincmd l<cr>:close<cr>
" close current window
noremap <silent> ,cc :close<cr>
" move current window to certain direction
noremap <silent> ,ml <C-W>L
noremap <silent> ,mk <C-W>K
noremap <silent> ,mh <C-W>H
noremap <silent> ,mj <C-W>J

set novisualbell  " No blinking .
set noerrorbells  " No noise.
set vb t_vb=
" Allow backspacing over indent, eol, and the start of an insert
set backspace=2

" Set the status line the way I like it
set stl=%f\ %m\ %r\ Line:\ %l/%L[%p%%]\ Col:\ %c\ Buf:\ #%n\ [%b][0x%B]

" tell Vim to always put a status line in, even if there is only one
" window
set laststatus=2
" When the page starts to scroll, keep the cursor 8 lines from
" the top and 8 lines from the bottom
set scrolloff=8
" Incrementally match the search.  I orignally hated this
" but someone forced me to live with it for a while and told
" me that I would grow to love it after getting used to it...
" turns out he was right :)
set incsearch

" Syntax coloring lines that are too long just slows down the world
set synmaxcol=2048
set expandtab
set smarttab
set autoindent
set ai sw=2 sts=2 ts=2 et
set path=.,/Users/Stian/src/folders2web/**,/Users/Stian/src/**

set background=light
colorscheme solarized

" execute ruby
nnoremap <leader>r :rubyf %<cr>
