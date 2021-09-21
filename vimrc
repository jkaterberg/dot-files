" All system-wide defaults are set in $VIMRUNTIME/archlinux.vim (usually just
" /usr/share/vim/vimfiles/archlinux.vim) and sourced by the call to :runtime
" you can find below.  If you wish to change any of those settings, you should
" do it in this file (/etc/vimrc), since archlinux.vim will be overwritten
" everytime an upgrade of the vim packages is performed.  It is recommended to
" make changes after sourcing archlinux.vim since it alters the value of the
" 'compatible' option.

" This line should not be removed as it ensures that various options are
" properly set to work with the Vim-related packages.
runtime! archlinux.vim

" If you prefer the old-style vim functionalty, add 'runtime! vimrc_example.vim'
" Or better yet, read /usr/share/vim/vim80/vimrc_example.vim or the vim manual
" and configure vim to your own liking!

" do not load defaults if ~/.vimrc is missing
"let skip_defaults_vim=1

"Enable 256 colors
set t_Co=256

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" For Vundle
set nocompatible
filetype off


"Plugins
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" gruvbox Color scheme
Plugin 'morhetz/gruvbox'

" Lightline
Plugin 'itchyny/lightline.vim'
set laststatus=2

"ALE Linter
Plugin 'dense-analysis/ale'

"NerdTree
Plugin 'preservim/nerdtree'
map <C-n> :NERDTreeToggle<CR>

" YouCompleteMe
Plugin 'ycm-core/YouCompleteMe'

" Polyglot
Plugin 'sheerun/vim-polyglot'

" Rainbow Parentheses
Plugin 'luochen1990/rainbow'
let g:rainbow_active=1

" LEXIMA
Plugin 'cohama/lexima.vim'

" Emmet
Plugin 'mattn/emmet-vim'

" CSS color
Plugin 'ap/vim-css-color'

" VimTex
Plugin 'lervag/vimtex'

call vundle#end()

filetype plugin indent on


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
colorscheme gruvbox
let g:lightline = {'colorscheme': 'gruvbox'}

syntax on
set autoindent
set nu
set ts=2 sw=2
set clipboard=unnamed
