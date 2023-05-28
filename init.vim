"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => VimPlug for managing Plugins
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

source ~/.config/nvim/vim-plugs.vim

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Basic Setup
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" Encoding
set encoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8
set ttyfast

"" Fix backspace indent
set backspace=indent,eol,start

"" Tabs. May be overridden by autocmd rules
set tabstop=4
set softtabstop=0
set shiftwidth=4
set expandtab

"" Map leader to ,
let mapleader=','

"" Enable hidden buffers
set hidden

"" Searching
set hlsearch
set incsearch
set ignorecase
set smartcase

set fileformats=unix,dos,mac

if exists('$SHELL')
    set shell=$SHELL
else
    set shell=/bin/sh
endif

" Session management
let g:session_directory = "~/./session"
let g:session_autoload = "no"
let g:session_autosave = "no"
let g:session_command_aliases = 1

" Enable copying from vim to clipboard
if has('win32')
  set clipboard=unnamed  
else
  set clipboard=unnamedplus
endif

" Auto reload content changed outside
au CursorHold,CursorHoldI * checktime
au FocusGained,BufEnter * :checktime
autocmd FocusGained,BufEnter,CursorHold,CursorHoldI *
    \ if mode() !~ '\v(c|r.?|!|t)' && getcmdwintype() == ''
      \ | checktime 
    \ | endif
autocmd FileChangedShellPost *
    \ echohl WarningMsg 
    \ | echo "File changed on disk. Buffer reloaded."
    \ | echohl None
    
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Visual Settings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
syntax on
set ruler
set number

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Other Settings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
for setting_file in split(glob(stdpath('config').'/plug-settings/*.vim'))
  execute 'source' setting_file
endfor
