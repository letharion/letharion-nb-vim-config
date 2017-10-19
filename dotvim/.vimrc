" Initiate Neo Bundle
set nocompatible               " Be iMproved

"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=/home/letharion/.vim/dein.vim/repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state('/home/letharion/.vim/dein.vim')
  call dein#begin('/home/letharion/.vim/dein.vim')

  " Let dein manage dein
  " Required:
  call dein#add('/home/letharion/.vim/dein.vim/repos/github.com/Shougo/dein.vim')

  " Add or remove your plugins here:
  call dein#add('Shougo/neosnippet.vim')
  call dein#add('Shougo/neosnippet-snippets')
  call dein#add('altercation/vim-colors-solarized')
  call dein#add('junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --bin' })
  call dein#add('junegunn/fzf.vim')

  " You can specify revision/branch/tag.
  call dein#add('Shougo/vimshell', { 'rev': '3787e5' })

  " Required:
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

" FZF settings
set rtp+=~/.fzf

" Everything that doesn't fit into a bundle goes here.
source $HOME/.vim/basic-settings
source $HOME/.vim/drupal-settings
source $HOME/.vim/go-settings

source $HOME/.vim/debug-info
source $HOME/.vim/completion
