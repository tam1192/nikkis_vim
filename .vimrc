" my vim rc

" 検索系
set ignorecase
set smartcase
set wrapscan
set incsearch
set hlsearch
set shortmess-=S

" 表示系
set title
set number
set laststatus=2
set showmatch

" ヤンクでクリップボードにコピー
set clipboard=unnamed,autoselect

" マウス操作を許す
set mouse=a

" syntax有効化
syntax enable

" 参考
" https://qiita.com/iwaseasahi/items/0b2da68269397906c14c

" plugin load
call plug#begin()
  source union.plugins.vim
call plug#end()

" plugin settings
source union.settings.vim
