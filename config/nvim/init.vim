let g:python3_host_prog = '/usr/bin/python3'

"End dein Scripts-------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

let s:dein_dir = '~/.cache/dein'

" Required:
set runtimepath+=~/.cache/dein/repos/github.com/Shougo/dein.vim

" Add or remove your plugins here like this:
"call dein#add('Shougo/neosnippet.vim')
"call dein#add('Shougo/neosnippet-snippets')


if dein#load_state(s:dein_dir)
	call dein#begin(s:dein_dir)

	call dein#add('~/.cache/dein/repos/github.com/Shougo/dein.vim')

	" プラグインリストを収めた TOML ファイル
	" 予め TOML ファイル（後述）を用意しておく
	let g:rc_dir    = '~/.config/nvim/rc'
	let s:toml      = g:rc_dir . '/dein.toml'
	let s:lazy_toml = g:rc_dir . '/dein_lazy.toml'

        " TOML を読み込み、キャッシュしておく
        call dein#load_toml(s:toml,      {'lazy': 0})
        call dein#load_toml(s:lazy_toml, {'lazy': 1})

        " 設定終了
        call dein#end()
        call dein#save_state()
endif



" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
if dein#check_install()
	call dein#install()
endif

"End dein Scripts-------------------------

" 行番号を表示
"set number
