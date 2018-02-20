" ************************************** * * * * * * * * Plug-In Manager BEGIN
call plug#begin('~/.local/share/nvim/plugged')

" ************************************** * * * * * * * * *  Aesthetic Plug-Ins
Plug 'morhetz/gruvbox'                 " Gruvbox theme
Plug 'luochen1990/rainbow'             " rainbow parentheses
Plug 'tpope/vim-commentary'            " super great commenting
Plug 'nathanaelkane/vim-indent-guides' " indentation visual guide
Plug 'vim-airline/vim-airline'| Plug 'vim-airline/vim-airline-themes'

" ************************************** * * *  Autocomplete & Engine Plug-Ins
Plug 'Shougo/deoplete.nvim',           " async dark-powered autocomplete
			\{ 'do': ':UpdateRemotePlugins' }

" Asynchronous Completion Engines (ACE)
Plug 'Shougo/neco-syntax'              " all filetypes
Plug 'zchee/deoplete-clang'            " C/C++/Objective-C/Objective-C++
Plug 'fszymanski/deoplete-emoji'       " Emoji
Plug 'zchee/deoplete-go',              {'for': 'go', 'do': 'make'}
Plug 'zchee/deoplete-jedi',            {'for': 'python'}
Plug 'Shougo/neco-vim',                {'for': 'vim'}

" Snippets
Plug 'Shougo/neosnippet' | Plug 'Shougo/neosnippet-snippets'

" ************************************** * * * * * * * Filetype-Based Plug-Ins
Plug 'fatih/vim-go'                    " TODO: add description
function! BuildComposer(info)          " Markdown Composer
  if a:info.status != 'unchanged' || a:info.force
    if has('nvim')
      !cargo build --release
    else
      !cargo build --release --no-default-features --features json-rpc
    endif
  endif
endfunction
Plug 'euclio/vim-markdown-composer', { 'do': function('BuildComposer') }

" ************************************** * * * * * * * * * * * *  Git Plug-Ins
Plug 'tpope/vim-fugitive'              " super great Git wrapper
Plug 'airblade/vim-gitgutter'          " show Git changes in gutter

" ************************************** * * * * * * * * * * * Linter Plug-Ins
Plug 'w0rp/ale'                        " Asynchronous Lint Engine

" ************************************** * * * * * * * * * * NERDTree Plug-Ins
Plug 'scrooloose/nerdtree',            {'on': 'NERDTreeToggle'}
Plug 'Xuyuanp/nerdtree-git-plugin'     " TODO: add description
Plug 'ryanoasis/vim-devicons'          " display devicon	 in NERDTree, etc.
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

" ************************************** * * * * * * * * * * * * REPL Plug-Ins
Plug 'hkupty/iron.nvim',               {'for': 'python'}

" ************************************** * * * * * * * * * * * Search Plug-Ins
Plug 'junegunn/fzf'                    " fuzzy search
Plug 'ludovicchabant/vim-gutentags'    " tag management
