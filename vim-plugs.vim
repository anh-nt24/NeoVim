call plug#begin('~/.config/nvim/plugged')
	" {{ Theme }}
	Plug 'navarasu/onedark.nvim'
	
	" {{ File explore }}
	Plug 'preservim/nerdtree'
	Plug 'Xuyuanp/nerdtree-git-plugin'
	Plug 'ryanoasis/vim-devicons'
	Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
	
	" {{ File search }}
	if isdirectory('/usr/local/opt/fzf')
  		Plug '/usr/local/opt/fzf' | Plug 'junegunn/fzf.vim'
	else
  		Plug 'junegunn/fzf', {'do': { -> fzf#install() }}
  		Plug 'junegunn/fzf.vim'
	endif
	
	" {{ Status bar }}
	Plug 'vim-airline/vim-airline'
	Plug 'vim-airline/vim-airline-themes'
	
	" {{ Terminal }}
	Plug 'voldikss/vim-floaterm'
	
	" {{ Syntax highlight }}
	Plug 'yuezk/vim-js'                           " Javascript
  	Plug 'MaxMEllon/vim-jsx-pretty'               " JSX/React
  	Plug 'jackguo380/vim-lsp-cxx-highlight'       " C/C++
  	Plug 'uiiaoo/java-syntax.vim'                 " Java
  	
  	" {{ Suggestion }}
  	Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()
