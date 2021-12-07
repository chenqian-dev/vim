Plug 'skywind3000/asyncrun.vim'

" 自动打开quikfix window 高度为6
let g:asyncrun_open = 6

" 任务结束时自动响铃提示
let g:asyncrun_bell = 1

" 设置 F10  打开/关闭 quickfix 窗口
nnoremap <F10> :call asyncrun#quickfix_toggle(6)<cr>
