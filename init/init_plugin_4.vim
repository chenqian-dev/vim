"----------------------------------------------------------------------
" 计算当前 vim-init 的子路径
"----------------------------------------------------------------------
let s:home = fnamemodify(resolve(expand('<sfile>:p')), ':h:h')

function! s:path(path)
	let path = expand(s:home . '/' . a:path )
	return substitute(path, '\\', '/', 'g')
endfunc


"----------------------------------------------------------------------
" 在 ~/.vim/bundles 下安装插件
"----------------------------------------------------------------------
call plug#begin(get(g:, 'bundle_home', '~/.vim/bundles'))

LoadScript init/plugin/leader_f.vim
LoadScript init/plugin/tabular.vim
LoadScript init/plugin/airline.vim
LoadScript init/plugin/nerdtree.vim
LoadScript init/plugin/coc.vim
LoadScript init/plugin/asyncrun.vim
LoadScript init/plugin/tags.vim

call plug#end()
