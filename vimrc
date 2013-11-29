set nocompatible

colorscheme torte

syntax on

set number         " show line number in default
set autoread       " auto read when file is changed from outside
set cursorline     " highlight current line
set hlsearch       " search highlighting

set tabstop=4
set expandtab
set shiftwidth=4

set nostartofline
set splitbelow
set splitright


if has("gui_running")             " GUI color and font settings
  if has("gui_gtk2")
    set guifont=Inconsolata\ 18
  elseif has("gui_win32")
    set guifont=Consolas:h18:cANSI
  else
    set guifont=Monaco:h18
  endif

  set lines=24 columns=80
else                              " terminal color and font settings
  " This is console Vim.
  if exists("+lines")
    set lines=24
  endif
  if exists("+columns")
    set columns=80
  endif
endif


" ===== Vundle setting begin =====

filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

" My Bundles here:
"
" original repos on github
Bundle 'tpope/vim-fugitive'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
Bundle 'tpope/vim-rails.git'
" vim-scripts repos
Bundle 'L9'
Bundle 'FuzzyFinder'
" non github repos
Bundle 'git://git.wincent.com/command-t.git'
" git repos on your local machine (ie. when working on your own plugin)
"Bundle 'file:///Users/gmarik/path/to/plugin'
" YouCompleteMe
Bundle 'YouCompleteMe'
" syntastic
Bundle 'syntastic'
" a.vim
Bundle 'a.vim'
" nerdtree
Bundle 'nerdtree'

filetype plugin indent on     " required!
"
" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle command are not allowed..

" ===== Vundle setting end =====

let g:ycm_global_ycm_extra_conf = '~/.vim/ycm_extra_conf.py'
let g:ycm_confirm_extra_conf = 0

autocmd vimenter * if !argc() | NERDTree | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

