" Initiate Neo Bundle
set nocompatible               " Be iMproved

if has('vim_starting')
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

" Let NeoBundle manage NeoBundle
" NeoBundleFetch 'Shougo/neobundle.vim'

" Include list of Neo bundles
source $HOME/.vim/neobundles

filetype plugin indent on     " Required!

"
" Brief help
" :NeoBundleList          - list configured bundles
" :NeoBundleInstall(!)    - install(update) bundles
" :NeoBundleClean(!)      - confirm(or auto-approve) removal of unused bundles

" Installation check.
NeoBundleCheck

" Everything that doesn't fit into a bundle goes here.
source $HOME/.vim/basic-settings
source $HOME/.vim/drupal-settings
source $HOME/.vim/go-settings

source $HOME/.vim/debug-info
source $HOME/.vim/completion
