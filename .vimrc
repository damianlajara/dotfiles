set nocompatible              " be iMproved, required
filetype off                  " required

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
" Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}



" Check out the plugins here! http://vimawesome.com/
" Check out the tutorials here! http://vimcasts.org/categories/plugins/
" Read this article: http://dougblack.io/words/a-good-vimrc.html
“ Nice examples: https://github.com/VundleVim/Vundle.vim/wiki/Examples


" Dash integration into Vim
Plugin 'rizzatti/dash.vim'
" Integration with switching between tmux panes and splits
Plugin 'christoomey/vim-tmux-navigator'
" Automatic closing of braces
Plugin 'Raimondi/delimitMate'
" Code completion
Plugin 'Valloric/YouCompleteMe'
"Syntax Checking
Plugin 'scrooloose/syntastic'
"File tree"
Plugin 'scrooloose/nerdtree'
" Markdown syntax
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
" Cofee-script syntax
Plugin 'kchmck/vim-coffee-script'
" Less Syntax
Plugin 'groenewege/vim-less'
" I don't know why I have it, but it's cool
Plugin 'tpope/vim-fugitive'
" Tab completion
Plugin 'ervandew/supertab'
" JS Syntax and indenting
Plugin 'pangloss/vim-javascript'
" help look up step definitions
Plugin 'tpope/vim-cucumber'
" search the codebase with ag (A.K.A 'the silver searcher')
Plugin 'rking/ag.vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
" Help the syntax recognition work
syntax enable
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

" Use case insensitive search, except when using capital letters
set ignorecase
set smartcase

" When opening a new line and no filetype-specific indenting is enabled, keep
" the same indent as the line you're currently on. Useful for READMEs, etc.
set autoindent

" Display the cursor position on the last line of the screen or in the status
" line of a window
set ruler

" Always display the status line, even if only one window is displayed
set laststatus=2

" Instead of failing a command because of unsaved changes, instead raise a
" dialogue asking if you wish to save changed files.
set confirm

" Instead of failing a command because of unsaved changes, instead raise a
" dialogue asking if you wish to save changed files.
set confirm

" this chunk makes it so lines wrap nicely without chopping words in half
set wrap
set linebreak
set nolist
set textwidth=0
set wrapmargin=0

" editing
set nowrap

" splitting
set splitright
set splitbelow

" folding
set foldmethod=indent
set nofoldenable
set foldlevel=1
set foldnestmax=10

" shows commands (try `55 j` for example and look in the bottom right)
set showcmd

" smart indents
filetype plugin indent on
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab
set smartindent
