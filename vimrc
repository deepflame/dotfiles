set nocompatible               " disable vi compatibility

" Setup Plugins {{
if filereadable(expand("~/.vim.bundles"))
	source ~/.vim.bundles
endif
" }}

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
	set cursorline                 " cursor line highlghted
	set list                       " display invisible chars
	set listchars=tab:▸\ ,eol:¬    " Use the same symbols as TextMate for tabstops and EOLs
	set backspace=indent,eol,start " allow backspace in more situations

	set showmatch                  " show matching brackets/paranthesis

	" color scheme
	set background=dark
	let g:hybrid_use_Xresources=1
	colorscheme hybrid

	" text indentation
	set tabstop=4                  " display tab 4 colums wide
	set softtabstop=4
	set shiftwidth=4
	set noexpandtab                " do not use spaces instead of tabs
	set noautoindent               " do not indent automatically after CR

	" search
	set hlsearch                   " highlight search results
	set ignorecase                 " case insensitive search, also for autocompletion

	" ui
	set encoding=utf-8
	set laststatus=2               " always show status line
	set noshowmode                 " do not show vim mode (already have powerline)
	set noshowcmd
	set noruler                    " do not show ruler (powerline has)

	set splitbelow
	set splitright
	set mouse=a                    " enable mouse in text mode
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

	" Coffeescript files
	autocmd BufNewFile,BufReadPost *.coffee setlocal shiftwidth=2 tabstop=2 softtabstop=2 expandtab
endif
" }}

