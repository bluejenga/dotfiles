"行番号表示
:set number

"検索時に大文字小文字を区別しない
:set ignorecase

"検索結果をハイライトする
:set hlsearch

"タブ関連
set tabstop=4
set shiftwidth=4

"配色
syntax on
set background=dark
colorscheme jellybeans

"自動インデント
set cindent

"バックアップファイルを作らない
set nobackup

"不可視文字の可視化
set list
set listchars=tab:>-,eol:¬

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

"カレント行のハイライト
set cursorline

"クリップボードを使えるようにする
set clipboard=unnamedplus

"インサートモードをjjで抜ける
inoremap <silent> jj <ESC>
