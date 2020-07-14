scriptencoding utf-8

" ************************************** * * * * * * * * * rainbow parentheses
let g:rainbow_active = 1
" Gruvbox colors:
" 'plum3', 'darkorange', 'seagreen3', 'lightskyblue3',
" 'gold1', 'yellow3', 'orangered1'
let g:rainbow_conf = {
	\	'guifgs': ['plum3', 'lightskyblue3', 'gold2', 'orangered1'],
	\	'ctermfgs': ['lightblue', 'lightyellow', 'lightcyan', 'lightmagenta'],
	\	'operators': '_,_',
	\	'parentheses': ['start=/(/ end=/)/ fold', 'start=/\[/ end=/\]/ fold',
	\                   'start=/{/ end=/}/ fold'],
	\	'separately': {
	\		'*': {},
	\		'tex': {
	\			'parentheses': ['start=/(/ end=/)/', 'start=/\[/ end=/\]/'],
	\		},
	\		'vim': {
	\			'parentheses': ['start=/(/ end=/)/', 'start=/\[/ end=/\]/',
	\                           'start=/{/ end=/}/ fold',
	\                           'start=/(/ end=/)/ containedin=vimFuncBody',
	\                           'start=/\[/ end=/\]/ containedin=vimFuncBody',
	\                           'start=/{/ end=/}/ fold containedin=vimFuncBody'],
	\		},
	\		'html': {
	\			'parentheses': ['start=/\v\<((area|base|br|col|embed|hr|img|input|keygen|link|menuitem|meta|param|source|track|wbr)[ >])@!\z([-_:a-zA-Z0-9]+)(\s+[-_:a-zA-Z0-9]+(\=("[^"]*"|'."'".'[^'."'".']*'."'".'|[^ '."'".'"><=`]*))?)*\>/ end=#</\z1># fold'],
	\		},
	\		'css': 0,
	\	}
	\}

" ************************************** * * * * * * * * * * * * * * * airline
let g:airline_theme = 'gruvbox'
let g:airline_powerline_fonts = 1

let g:airline#extensions#ale#enabled = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_tabs = 1
let g:airline#extensions#tabline#tab_nr_type = 1
let g:airline#extensions#tabline#show_splits = 0
let g:airline#extensions#tabline#show_buffers = 0
let g:airline#extensions#tabline#show_close_button = 0
let g:airline#extensions#tabline#formatter = 'unique_tail_improved'

" ************************************** * * * * * * * * * * * * * * * gruvbox
let g:gruvbox_italic = 1

" ************************************** * * * * * * * * * * * * *  vim-indent
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_start_level = 2
let g:indent_guides_guide_size = 1

" ************************************** * * * * * * * * * * * * * *  deoplete
let g:deoplete#enable_at_startup = 1

let g:deoplete#sources#jedi#enable_cache = 1
let g:deoplete#sources#jedi#is_debug_enabled = 0
" point the following to conda's python path
" let g:deoplete#sources#jedi#python_path = '/opt/anaconda/bin/python'

" ************************************** * * * * * * * * * * * *  vim-fugitive
set statusline+=%{fugitive#statusline()}

" ************************************** * * * * * * * * * * * * * * * * * ALE
let g:ale_completion_enabled = 1

let g:ale_sign_error = ''
let g:ale_sign_warning = ''

" ************************************** * * * * * * * * * * * * * * * * *  Go
let g:go_fmt_command = "goimports"
let g:go_auto_type_info = 1
let g:go_auto_sameids = 1

let g:go_highlight_build_constraints = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_operators = 1
let g:go_highlight_structs = 1
let g:go_highlight_types = 1

" ************************************** * * * * * * * * * * * * *  commentary
autocmd FileType apache setlocal commentstring=#\ %s 

" ************************************** * * * * * * * * * * * * * *  NERDTree
let g:NERDTreeHighlightCursorline = 1
let g:NERDTreeQuitOnOpen = 1
let g:NERDTreeMinimalUI = 1
let NERDTreeStatusline="%{exists('b:NERDTree')?fnamemodify(b:NERDTree.root.path.str(), ':~'):''}"

" map NERDTreeToggle to Ctrl-o
map <C-o> :NERDTreeToggle<CR>

autocmd StdinReadPre * let s:std_in=1
" open NERDTree if no args or opened on directory
function StartUp()
    if argc() == 0 && !exists("s:std_in")
        NERDTree
    elseif argc() ==1 && isdirectory(argv()[0]) && !exists("s:std_in")
        exe 'NERDTree' argv()[0]
        wincmd p
        ene
        exe 'cd '.argv()[0]
    endif
endfunction

autocmd VimEnter * call StartUp()
" close if only NERDTree open
autocmd bufenter * if (winnr("$") == 1
			\ && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" ************************************** * * * * * * * * * Plug-In Manager END
call plug#end()
