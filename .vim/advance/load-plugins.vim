"================================
"vim plug settings
"===============================
"if has('git')
if filereadable(expand("~/.vim/autoload/plug.vim"))
  call plug#begin()

  "linux環境のみ
  if has('unix')
    Plug 'chriskempson/base16-vim'                                      "base16
    Plug 'junegunn/fzf.vim'                                             "fzf
    Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }   "fzf
    Plug 'mattn/emmet-vim'                                              "Emmet
    Plug 'Xuyuanp/nerdtree-git-plugin' , {'for':'Git'}                  "nerdtreeで変更があったら表示する
    Plug 'airblade/vim-gitgutter'   , {'for':'Git'}                     "signの領域にgitのstatusを表示する
    Plug 'b4b4r07/vim-shellutils'                                       "Commandを使いやすくする
  endif

  "Windows環境のみ
  if has('win32') || has('win64')
    Plug 'haishanh/night-owl.vim'                                       "colorscheme
  	Plug 'jdkanani/vim-material-theme'                                  "colorscheme
    Plug 'vim-scripts/wimproved.vim'                                    "windows用、画面の切り替え
    Plug 'thinca/vim-fontzoom'                                          "windows用、フォントサイズ切り替え
    Plug 'vim-scripts/AutoComplPop'
  endif

  "表示補助
  Plug 'bronson/vim-trailing-whitespace'                              "無駄な空白を可視化する
  Plug 'gko/vim-coloresque'                                           "色を視覚化にする
  Plug 'scrooloose/nerdtree'                                          "ファイルツリー
  Plug 'jistr/vim-nerdtree-tabs'                                      "Nerdtreeをtabで扱いやすいようにする
  Plug 'ryanoasis/vim-devicons'                                       "nerdtreeにアイコンを表示する
  Plug 'itchyny/lightline.vim'                                        "powerlineみたいな奴
  Plug 'simeji/winresizer'                                            "画面をリサイズしやすくす
  Plug 'Lokaltog/vim-easymotion'                                      "爆速で移動する
  Plug 'osyo-manga/vim-over'                                          "置換をリアルタイム表示にする
  Plug 'tomtom/tcomment_vim'                                          "コメントトグル
  Plug 'godlygeek/tabular'                                            "整形する

  "コーディング補助
  Plug 'tpope/vim-surround'                                           "シングルクオートとダブルクオートを入れ替える
  Plug 'Townk/vim-autoclose'                                          "自動でカッコを閉じてくれる
  Plug 'szw/vim-tags'                                                 "Ctagsの拡張プラグイン
  Plug 'majutsushi/tagbar'                                            "tagbar表示
  Plug 'sheerun/vim-polyglot'                                         "vimの言語サポートを行う
  Plug 'alvan/vim-closetag'                                           "閉じタグの自動化
  Plug 'vim-jp/vimdoc-ja'                                             "vimhelp jpfile
  Plug 'qpkorr/vim-bufkill'                                           "buff削除用
  Plug 'reireias/vim-cheatsheet'                                      "自作チートシートの表示を行う
  Plug 'KeyboardFire/vim-minisnip'                                    "snipet
  Plug 'drmingdrmer/vim-toggle-quickfix'                              "QuickFix
  Plug 'nazo/pt.vim'                                                  "pt
  Plug 'LeafCage/yankround.vim'                                       "yankしやすくする
  Plug 'AndrewRadev/switch.vim'                                       "切り替え
  "Disable
  "Plug 'nathanaelkane/vim-indent-guides'                             "インデントに色を付ける
  "Plug 'terryma/vim-multiple-cursors'                                 "multiple-cursor機能を提供する

  Plug 'kannokanno/previm'             , {'for':'markdown'}
  Plug 'tyru/open-browser.vim'         , {'for':'markdown'}
  Plug 'violetyk/iikanji-markdown.vim' , {'for':'markdown'}
  Plug 'dag/vim-fish'                  , {'for':'fish'}               "Fish Scriptのシンタックスハイライト
  Plug 'todesking/ruby_hl_lvar.vim'    , {'for':'Ruby'}               "Rubyのローカル変数をハイライト
  Plug 'vim-scripts/ruby-matchit'      , {'for':'Ruby'}               "Rubyのendも%で移動出来るようにする
  Plug 'thinca/vim-ref'                , {'for':'Ruby'}               "Rubyのリファレンスマニュアルをvimで読めるようにする(ref gemを入れる必要あり)
  Plug 'osyo-manga/vim-monster'        , {'for':'Ruby'}               "Rubyのコード補完機能を提供
  Plug 'tpope/vim-endwise'             , {'for':'Ruby'}               "自動でendを補完してくれる
  Plug 'othree/html5.vim'              , {'for':'html'}               "HTML Syntax
  Plug 'hail2u/vim-css3-syntax'        , {'for':'css'}                "CSS Syntax

  call plug#end()
end
"endif
