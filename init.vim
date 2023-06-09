"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => VimPlug for managing Plugins
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" auto-install vim-plug
if empty(glob(stdpath('config') . '/autoload/plug.vim'))
  if has('win32') || has('win64')
    silent !powershell -NoProfile -Command "Invoke-WebRequest -Uri 'https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim' -OutFile $HOME/vimfiles/autoload/plug.vim"
  else
    silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
      \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  endif
  autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

if has('win32') || has('win64')
  source $HOME/vimfiles/vim-plugs.vim
else
  source ~/.config/nvim/vim-plugs.vim
endif


" Load lua
lua require('usr.nvim-autopairs')
lua require('usr.nvim-treesitter')
lua require('usr.neural')

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Basic Setup
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Encoding
set encoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8
set ttyfast

" Current line
set cursorline

" Neural config
let g:neural.ui.prompt_icon = ' >'


" Fix backspace indent
set backspace=indent,eol,start

" Tabs. May be overridden by autocmd rules
set tabstop=4
set softtabstop=0
set shiftwidth=4
set expandtab
inoremap <expr> <cr> 
   \   getline(".") =~ '\S\s*{$'                 ? "<bs><cr>{<cr>}<esc>O"
   \ : getline('.') =~ '^\s*{$'                  ? "<cr>}<esc>O" 
   \ : getline(".")[col(".")-2:col(".")-1]=="{}" ? "<cr><esc>O"
   \ :                                             "<cr>"

" Searching
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

" Search a hightlighted text
vnoremap // y/\V<C-R>=escape(@",'/\')<CR><CR>
nmap /\ :noh<CR>

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
set hidden
set switchbuf=useopen,usetab

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Other Settings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
for setting_file in split(glob(stdpath('config').'/plug-settings/*.vim'))
  execute 'source' setting_file
endfor

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Define Mappings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:maps_file = stdpath('config') . '/maps.vim'
if filereadable(g:maps_file)
  execute 'source' g:maps_file
endif
