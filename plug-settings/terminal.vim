" Set floaterm window's background to black
hi Floaterm guibg=white

" Set floating window border line color to cyan, and background to orange
" hi FloatermBorder guibg=orange guifg=cyan
hi FloatermBorder guibg=green guifg=gray

let g:floaterm_position = 'bottom'
let g:floaterm_width = 0.99
let g:floaterm_height = 0.3
let g:floaterm_title = 'Terminal $1/$2'
let g:floaterm_wintype = 'float'
let g:floaterm_rootmarkers = ['.pro']
if has('win32')
	let g:floaterm_shell = 'powershell -nologo'
endif
