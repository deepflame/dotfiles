set nocompatible               " disable vi compatibility

" Setup Plugins {{
source ~/.vim-plugs

" General {{

	" files
	set nobackup
	set noswapfile
	set hidden                     " hidden buffers without confirmation

	" text ui
	syntax on                      " syntax highlighting
	set nowrap                     " do not wrap lines
	set textwidth=0
	set wrapmargin=0
	set nonumber                   " no line numbers
	set norelativenumber
	set nocursorline               " no cursor line highlghted for better performance
	set list                       " display invisible chars
	set listchars=tab:▸\ ,eol:¬    " Use the same symbols as TextMate for tabstops and EOLs
	set backspace=indent,eol,start " allow backspace in more situations

	set showmatch                  " show matching brackets/paranthesis

	set history=200                " command history size
	set undolevels=1000            " number of undo steps

	" color scheme
	set background=light           " tell vim we use a light background
	let g:solarized_termcolors=256 " fix solarized colors in xterm

	try
	  colorscheme solarized          " set color theme
	catch /^Vim\%((\a\+)\)\=:E185/
	  colorscheme default
	endtry

	" text indentation (managed by editorconfig)
	"set tabstop=4                  " display tab 4 colums wide
	"set softtabstop=4
	"set shiftwidth=4
	"set noexpandtab                " do not use spaces instead of tabs
	"set autoindent                 " use indent from the previous line
	"set smarttab                   " tabs according to shiftwidth

	" search
	set hlsearch                   " highlight search results
	set incsearch                  " incrementally highlight search results
	set ignorecase                 " case insensitive search, also for autocompletion

	" folding
	set foldmethod=indent          "fold based on indent
	set foldnestmax=10             "deepest fold is 10 levels
	set nofoldenable               "dont fold by default
	set foldlevel=1

	" ui
	set encoding=utf-8
	set laststatus=2               " always show status line
	set noshowmode                 " do not show vim mode (already have powerline)
	set noshowcmd
	set noruler                    " do not show ruler (powerline has)

	set clipboard=unnamed          " easy clipboard (yank to system clipboard)

	" mouse
	if !has('nvim')
		set mouse=a                    " enable mouse in text mode
		set ttymouse=xterm2            " fix mouse in tmux
	endif

	set splitbelow
	set splitright
	set visualbell
" }}

" Mappings {{

	" easy window navigation
	noremap <C-h>  <C-w>h
	noremap <C-j>  <C-w>j
	noremap <C-k>  <C-w>k
	noremap <C-l>  <C-w>l

" }}

" Auto Commands {{
if has("autocmd")

	" source the vimrc file after saving it
	autocmd! BufWritePost .vimrc source $MYVIMRC

	" Ruby files (e.g. Gemfile, Vagrantfile)
	autocmd BufNewFile,BufRead *file setfiletype ruby

endif
" }}

