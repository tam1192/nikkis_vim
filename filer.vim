" ^tでトグルできるように
nnoremap <C-t> :Fern . -drawer -toggle -stay <CR>

augroup my-fern-startup
  " 自動起動
  autocmd! *
  autocmd VimEnter * ++nested Fern . -drawer -stay
augroup END

" fern関係の設定はこっち
function! s:init_fern() abort

  " 矢印でも操作できるようにする
  nmap <buffer> <Left> <Plug>(fern-action-collapse)

  " lキーでためるように
  nmap <buffer><expr>
      \ <Plug>(fern-my-expand-or-collapse)
      \ fern#smart#leaf(
      \   "\<Plug>(fern-action-collapse)",
      \   "\<Plug>(fern-action-expand)",
      \   "\<Plug>(fern-action-collapse)",
      \ )

  nmap <buffer><nowait> l <Plug>(fern-my-expand-or-collapse)
  nmap <buffer> <Right> <Plug>(fern-my-expand-or-collpase)


endfunction

augroup fern-custom
  autocmd! *
  " fern起動時に実行される
  autocmd FileType fern call s:init_fern()
augroup END
