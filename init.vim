scriptencoding utf-8
if !exists('g:vscode')
  let $PLUGINS = '$XDG_CONFIG_HOME/nvim/plug-ins.vim'
  let $SETTINGS = '$XDG_CONFIG_HOME/nvim/plug-settings.vim'
  source $PLUGINS
  source $SETTINGS
  
  " ************************************** * * * * * * * * * * * * *  Aesthetics
  colorscheme gruvbox
  set background=dark
  set termguicolors
  syntax enable
  
  " ************************************** * * * * * * * * * * * *  Capilization
  set smartcase
  set wildignorecase
  
  " ************************************** * * * * * * * * * *  General Behavior
  set hidden
  
  " ************************************** * * * * * * * * * * * * * * * * Hosts
  let g:python_host_prog  = '/usr/bin/python2'
  let g:python3_host_prog = '/usr/local/anaconda3/bin/python3'
  let g:ruby_host_prog    = '~/.rbenv/shims/neovim-ruby-host'

  " ************************************** * * * * * * * * * * * * * * * * * HUD
  set noshowmode
  set number
  set ruler
  set showcmd
  set showmatch
  
  " 81-character column marker
  set colorcolumn=81
  highlight ColorColumn ctermbg=81
  
  " tabs and splits open to the right and bottom
  set splitbelow
  set splitright
  
  " ************************************** * * * * * * Indentation + Spaces/Tabs
  set copyindent
  set softtabstop=4
  set shiftwidth=4
  set tabstop=4
  set listchars=tab:→∙,trail:┃
  set list
  filetype plugin indent on
  
  " guarantee tabs for make files
  augroup filetype_make
  	autocmd!
  	autocmd FileType make setlocal noexpandtab
  augroup END
  
  " expand tabs for Python
  augroup filetype_py
  	autocmd!
  	autocmd BufEnter *.py set ai sw=4 ts=4 sts=4 sta et
  augroup END
  
  " ************************************** * * * * * * * * * * * *  Key Mappings
  set mouse=a
  let g:mapleader = ','
  
  " tab to insert auto-completions
  inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
  inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
  
  " 'jk' to escape
  inoremap jk <esc>
  
  " Map SPACE to remove search highlighting
  nmap <SPACE> <SPACE>:noh<CR>
  
  "Remove all trailing whitespace by pressing F5
  nnoremap <F5> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar><CR>
  
  " Window navigation
  nnoremap <C-J> <C-W><C-J>
  nnoremap <C-K> <C-W><C-K>
  nnoremap <C-L> <C-W><C-L>
  nnoremap <C-H> <C-W><C-H>
  
  " Map prev tab to 'H'
  nnoremap H gT
  " Map next tab to 'L'
  nnoremap L gt
  
  " Move tab left
  nmap <leader><C-H> :-tabmove<CR>
  " Move tab right
  nmap <leader><C-L> :+tabmove<CR>
  
  " '%' highlights all text between pairs
  noremap % v%
  
  " edit and reload config files
  nnoremap <silent> <leader>ei :tabe $MYVIMRC<CR>
  nnoremap <silent> <leader>ep :tabe $PLUGINS<CR>
  nnoremap <silent> <leader>es :tabe $SETTINGS<CR>
  nnoremap <silent> <leader>si :source $MYVIMRC<CR>
endif
