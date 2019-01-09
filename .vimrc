" code syntax highlighting
syntax on

" Attempt to determine the type of a file based on its name and possibly its
" contents. Use this to allow intelligent auto-indenting for each filetype,
" and for plugins that are filetype specific.
filetype indent plugin on

" vim menu help
set wildmenu

" partial commands
set showcmd

" highlight search
set hlsearch

" Use visual bell instead of beeping when doing something wrong
set visualbell

" set the terminal code for the visual bell to nothing
set t_vb=

" case insensitive search, except when case is in search
set ignorecase
set smartcase

" Allow backspacing over autoindent, line breaks and start of insert action
set backspace=indent,eol,start

" When opening a new line and no filetype-specific indenting is enabled, keep
" the same indent as the line you're currently on. Useful for READMEs, etc.
set autoindent

" line numbers
set number

" soft tabs
set shiftwidth=4
set softtabstop=4
set expandtab
