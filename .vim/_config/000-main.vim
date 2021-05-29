"encoding
set encoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8,cp932,sjis
set fileformats=unix,dos,mac
scriptencoding utf8
set nobomb

"disable defult plugins
"https://lambdalisue.hatenablog.com/entry/2015/12/25/000046
let g:loaded_gzip            = 1
let g:loaded_tar             = 1
let g:loaded_tarPlugin       = 1
let g:loaded_zip             = 1
let g:loaded_zipPlugin       = 1
let g:loaded_rrhelper        = 1
let g:loaded_vimball         = 1
let g:loaded_vimballPlugin   = 1
let g:loaded_getscript       = 1
let g:loaded_getscriptPlugin = 1
let g:loaded_logiPat         = 1

"Terminalではmatchparenを停止
"https://lambdalisue.hatenablog.com/entry/2015/12/25/000046
if !has('gui_running')
  let g:loaded_matchparen = 1
endif

" コマンド初期化
augroup vimrc_init
  autocmd!
augroup END

if has('unix')
  let $SHELL='/bin/zsh'
  set shell=/bin/zsh
elseif has('win32') || has('win64')
  set shell=cmd
endif

"補完
set completeopt+=menuone,menu,preview
set pumheight=10
set wildignorecase
if exists("&pumblend")
  set pumblend=10
endif

"自動で読み込み直す。
set autoread

set startofline
set autochdir
set stal=0
set updatetime=300
set notitle
set showcmd
set nocursorline
set display=lastline
set laststatus=2
set nolist
set listchars=tab:\|\ ,trail:-,eol:↲,extends:»,precedes:«,nbsp:%

set ambiwidth=single

set iminsert=0
set imsearch=-1

"tab
set tabstop=4
set shiftwidth=4
set softtabstop=-1
set expandtab
set smarttab
set shiftround

"indent
set breakindent
set autoindent
set smartindent
set tm=500
set copyindent
set preserveindent
set backspace=indent,eol,start

"file
set nonumber
set ruler

"折り返し
set wrap
set wrapmargin=0

"検索/置換
set hlsearch
set incsearch
set ignorecase
set smartcase
set wrapscan
set nogdefault
set magic

set colorcolumn=0
set showmatch
set matchtime=1
set showbreak=>\ 
set wildmenu
set wildmode=list:longest,full
set matchpairs& matchpairs+=<:>
set infercase
set whichwrap=b,<,>,[,]
set scrolloff=40
set sidescrolloff=16
set sidescroll=1
set virtualedit=block
set nrformats=alpha,bin,hex
set confirm
set hidden
set autoread
set nobackup
set noswapfile
set splitbelow
set splitright
set undolevels=1000"
set shortmess+=c
set mouse=a

if !has('nvim')
  set ttymouse=xterm2
endif

"terminal
set termguicolors
set t_ZH=
set t_ZR=
set t_Co=256

set helplang=ja,en
set spelllang=en,cjk
set spelloptions=camel
set lazyredraw
set ttyfast
set timeout timeoutlen=100 ttimeoutlen=50
set shortmess+=I
set tm=500
set nofoldenable
set history=1000
set tm=500

"beep
set noerrorbells
set novisualbell
set t_vb=

if has('unix')
  set clipboard&
  set clipboard^=unnamedplus
endif

if has('win32') && has('win64')
  set clipboard+=unnamed"
endif

"command line
set cmdheight=1

"文字コード絡み
"https://github.com/tsuyoshicho/vimrc-reading/blob/7451171f07e88d6d1dcd73deb792aff115d2c94e/.vimrc
command! Utf8  edit ++encoding=utf-8 %
command! Cp932 edit ++encoding=cp932 %
command! Unix  edit ++fileformat=unix   %
command! Dos   edit ++fileformat=dos    %
command! AsUtf8 set 'fileencoding'=utf-8 | w
command! AsDos  set fileformat=dos     | w
command! AsUnix set fileformat=unix    | w

"edit dotfile
command! EditVim :edit ~/.config/nvim/_config
command! EditZsh :edit ~/.zsh/
command! EditTmux :edit ~/.tmux.conf
command! Root :edit ~/

if has('unix')
  command! Desktop :edit ~/Desktop/
elseif has('win32') || has('win64')
 command! Desktop :edit %USERPROFILE%\デスクトップ
endif

"set filetype
command! Memo new <bar> set filetype=markdown

"動作検証
"thx https://github.com/kato-k/vim-tips/blob/main/articles/vim-tips-no004.md
command! Profile call s:command_profile()
function! s:command_profile() abort
  profile start ~/profile.txt
  profile func *
  profile file *
endfunction

"ripgrepがあればデフォルトに設定
if executable('rg')
set grepprg=rg\ --vimgrep\ --no-heading
set grepformat=%f:%l:%c:%m,%f:%l:%m
endif

"読み込み
if has('win32') || has('win64')
  command! Source source ~/_vimrc
elseif has('unix')
  command! Source source ~/.config/nvim/init.vim
endif
