"========== encoding ==========
set encoding=utf-8
"scriptencoding utf-8
"set termencoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8,cp932,sjis,iso-2022-jp,euc-jp,cp20932
"let $LANG='en' "起動画面の文字化け


"========== 表示 ==========
"起動時のメッセージを表示しない
set shortmess+=I
"右端で折り返さない
set nowrap
"横スクロールを1文字ずつ
set sidescroll=1
"行番号表示
:set number
"ベルを鳴らさない
set visualbell t_vb=
set noerrorbells
"カレント行のハイライト
set cursorline
"ステータスライン
set statusline=%n:\ %f%m%r%=0x%B\ %{(&fenc!=''?&fenc:&enc)}\ %{(&fileformat)}\ %8l/%L行,%v列

"========== 検索 ==========
"検索時に大文字小文字を区別しない
:set ignorecase
"検索結果をハイライトする
:set hlsearch
"インクリメンタルサーチ
set incsearch
"自動的にquickfix windowを開く
autocmd QuickFixCmdPost *grep* cwindow


"========== 編集・入力 ==========
"編集中のバッファ切替を可能にする
set hidden
"タブ関連
set tabstop=4
set shiftwidth=4
"自動インデント
set cindent
"caseラベルをインデントしない。
set cino=:0
"ソフトタブ
set expandtab

"インサートモードをjjで抜ける
inoremap <silent> jj <ESC>

"BackSpaceでインデント、改行、以前の変更を削除する
set backspace=indent,eol,start

"矩形選択で行末以降を編集可能にする
set virtualedit+=block


"========== 配色・シンタックス ==========
syntax on
set background=dark
"colorscheme desert
colorscheme molokai

"不可視文字の可視化
set list
"set listchars=tab:>-,eol:<
set listchars=tab:^\ ,eol:<

"全角スペースをハイライト表示
function! ZenkakuSpace()
    highlight ZenkakuSpace cterm=reverse ctermfg=DarkMagenta gui=reverse guifg=DarkMagenta
endfunction

if has('syntax')
    augroup ZenkakuSpace
	    autocmd!
        autocmd ColorScheme       * call ZenkakuSpace()
        autocmd VimEnter,WinEnter * match ZenkakuSpace /　/
    augroup END
    call ZenkakuSpace()
endif


"========== そのた ==========
"カレントディレクトリを開いているファイルのディレクトリに変更
set autochdir
"バックアップファイルを作らない
set nobackup
" unファイルを作らない
set noundofile
"クリップボードを使えるようにする
"set clipboard=unnamedplus

"上位ディレクトリのtagsファイルを探す
set tags=./tags;

"========== キーマップ ==========
"バッファ切替
"cnoremap lsb ls
"cmap bol<CR> bro<SPACE>ol<CR>q

"*で検索時、移動しない
"nnoremap * *N

"========== vimrc.local ===========
augroup vimrc-local
  autocmd!
  autocmd BufNewFile,BufReadPost * call s:vimrc_local(expand('<afile>:p:h'))
augroup END

function! s:vimrc_local(loc)
  let files = findfile('.vimrc.local', escape(a:loc, ' ') . ';', -1)
  for i in reverse(filter(files, 'filereadable(v:val)'))
    source `=i`
  endfor
endfunction

"=========== netrw ============
let g:netrw_sort_sequence = "[\/]$,*,\.o$,\.obj$,\.info$,\.swp$,\.bak$,\~$"

