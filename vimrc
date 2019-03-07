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
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
"Plugin 'L9'
" Git plugin not hosted on GitHub
"Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
"Plugin 'ascenator/L9', {'name': 'newL9'}

Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'scrooloose/NERDTree'
Plugin 'tpope/vim-markdown'
Plugin 'qpkorr/vim-bufkill'
Plugin 'vim-airline/vim-airline'
Plugin 'patstockwell/vim-monokai-tasty'

Plugin 'pangloss/vim-javascript'
Plugin 'MaxMEllon/vim-jsx-pretty'
Plugin 'elzr/vim-json'
Plugin 'christoomey/vim-tmux-navigator'


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





"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Functions
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

function! HasPaste()
  if &paste
    return 'PASTE MODE  '
  else
    return ''
  endif
endfunction


" italics
let &t_ZH="\e[3m"
let &t_ZR="\e[23m"

" NERDTree fix
let g:NERDTreeNodeDelimiter = "\u00a0"

set t_Co=256
syntax on
set background=dark

let g:airline_theme='monokai_tasty'
let g:vim_monokai_tasty_italic = 1
colorscheme vim-monokai-tasty

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Text Editing
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set tabstop=2
set shiftwidth=2
set expandtab
set autoindent
set smartindent
set pastetoggle=<F10>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => VIM user interface
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Always show current position
set ruler

" Set leader
:let mapleader = ","

" Enable mouse
set mouse=a

" Configure backspace so it acts as it should act
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

" Ignore case when searching
set ignorecase

" When searching try to be smart about cases
set smartcase

" Don't redraw while executing macros (good performance config)
set lazyredraw

" Show matching brackets when text indicator is over them
set showmatch
" How many tenths of a second to blink when matching brackets
set mat=2


" No annoying sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500


" Set utf8 as standard encoding and en_US as the standard language
set encoding=utf8

" Use Unix as the standard file type
set ffs=unix,dos,mac


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Files, backups and undo
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Turn backup off, since most stuff is in SVN, git et.c anyway...
set nobackup
set nowb
set noswapfile



""""""""""""""""""""""""""""""
" => Status line
""""""""""""""""""""""""""""""
" Always show the status line
set laststatus=2

" Format the status line
set statusline=\ %{HasPaste()}%F%m%r%h\ %w\ \ CWD:\ %r%{getcwd()}%h\ \ \ Line:\ %l

""""""""""""""""""""""""""""""
" => Windows and Splits
""""""""""""""""""""""""""""""
" More natural splitting
set splitbelow
set splitright

" map <Leader>q to bufkill
nnoremap <Leader>q :BD<CR>
" map <Leader>b to buffer-cycle-backwards
nnoremap <Leader>b :BB<CR>
" map <Leader>b to buffer-cycle-forwards
nnoremap <Leader>f :BF<CR>
""""""""""""""""""""""""""""""
" => Shortcuts
""""""""""""""""""""""""""""""
nnoremap <Leader>n :NERDTree<CR>
