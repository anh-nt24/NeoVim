call plug#begin(stdpath('config').'/plugged')
	" {{ Theme }}
	Plug 'navarasu/onedark.nvim'
	
	" {{ File explore }}
	Plug 'preservim/nerdtree'
	Plug 'Xuyuanp/nerdtree-git-plugin'
	Plug 'ryanoasis/vim-devicons'                 " Icons
	"Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
	Plug 'unkiwii/vim-nerdtree-sync'              " Sync current file
	
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
	Plug 'windwp/nvim-autopairs'
	Plug 'preservim/nerdcommenter'
	Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
	Plug 'windwp/nvim-ts-autotag'
	Plug 'SirVer/ultisnips'                       " JSX snippet
	Plug 'mlaursen/vim-react-snippets'	      " React snippet
	
	" {{ Code generation }}
	Plug 'dense-analysis/neural'
    	Plug 'MunifTanjim/nui.nvim'
    	Plug 'ElPiloto/significant.nvim'
    	
    	" {{ Git }}
    	Plug 'tpope/vim-fugitive'                     " Git infomation 
  	Plug 'tpope/vim-rhubarb' 
  	Plug 'airblade/vim-gitgutter'                 " Git show changes 
  	Plug 'samoshkin/vim-mergetool'                " Git merge
  	Plug 'APZelos/blamer.nvim'                    " Git lens
    
    	" {{ Multiselect }}
    	Plug 'mg979/vim-visual-multi', {'branch': 'master'}
call plug#end()
