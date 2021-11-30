" 取得本文件所在的目录
let s:home = fnamemodify(resolve(expand('<sfile>:p')), ':h')

" 定义一个命令用来加载文件
command! -nargs=1 LoadScript exec 'so '.s:home.'/'.'<args>'

" 将 vim-init 目录加入 runtimepath
exec 'set rtp+='.s:home

" 将 ~/.vim 目录加入 runtimepath (有时候 vim 不会自动帮你加入）
set rtp+=~/.vim


" 加载模块
LoadScript init/init_basic_1.vim
LoadScript init/init_config_2.vim
LoadScript init/init_tabsize_3.vim
LoadScript init/init_plugin_4.vim
LoadScript init/init_style_5.vim
