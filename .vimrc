"=================================================================================
"                _    __    _
"               | |  / /   (_)   ____ ___    _____  _____
"               | | / /   / /   / __ `__ \  / ___/ / ___/
"               | |/ /   / /   / / / / / / / /    / /__
"               |___/   /_/   /_/ /_/ /_/ /_/     \___/
"                                                                   write by kota
"=================================================================g===============

"読み込みファイル設定
set runtimepath+=~/.vim/

runtime! init/*.vim             "初期化設定
runtime! plugins/*.vim          "pluginの個別設定
runtime! advance_init/*.vim"    "環境依存の設定
