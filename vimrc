filetype on
syntax on

" Colorscheme
colorscheme monokai


set number

let mapleader=" "

" Commands
map <leader>s :source ~/.vimrc<CR>
" vundle install
map <leader>i :PluginInstall<CR>

set hidden
set history=100


filetype indent on
set nowrap
set tabstop=2
set shiftwidth=2
set expandtab
set smartindent
set autoindent

autocmd BufWritePre * :%s/\s\+$//e


set hlsearch

set showmatch
set cursorline
set mouse=a

set nocompatible              " be iMproved, required
filetype off                  " required

"NerdTree config
" autoopen when no file is specified
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
" quit nerdtree if there is no buffer left
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" config
map <Leader>n <plug>NERDTreeTabsToggle<CR>
map <C-e> :NERDTreeTabsToggle<CR>:NERDTreeMirrorOpen<CR>
map <leader>e :NERDTreeFind<CR>
nmap <leader>nt :NERDTreeFind<CR>
let NERDTreeShowBookmarks=1
let NERDTreeIgnore=['\.pyc', '\~$', '\.swo$', '\.swp$', '\.git', '\.hg', '\.svn', '\.bzr']
let NERDTreeChDirMode=0
let NERDTreeQuitOnOpen=0
let NERDTreeMouseMode=2
let NERDTreeShowHidden=1
let NERDTreeKeepTreeInNewTab=1
" uncomment to always open NerdTree, though I prefer to open it only if no
" file is specified (so I can still use Vim for quick edit)
"let g:nerdtree_tabs_open_on_gui_startup=1
"let g:nerdtree_tabs_open_on_console_startup=1
"locate current file in NERDTree
"map <leader>l :NERDTreeFind<cr>


" YouCompleteMe

"ctrlp
" ignore big automated folders
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git\|.meteor\|dist\|build'


""" JAVASCRIPT
" vim-javascript
let g:javascript_plugin_flow = 1

""" PLUGINS
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'vim-airline/vim-airline'
Plugin 'kien/ctrlp.vim'
Plugin 'tpope/vim-surround'
Plugin 'jiangmiao/auto-pairs'
" Autocompletion
Plugin 'valloric/youcompleteme'
"Colors
Plugin 'altercation/vim-colors-solarized'

"Javascript
Plugin 'pangloss/vim-javascript'
Plugin 'marijnh/tern_for_vim'
"Html
Plugin 'mattn/emmet-vim'



" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
"Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
