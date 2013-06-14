" General {{
	set nocompatible               " disable vi compatibility
	filetype off                   " required for Vundle

	syntax on                      " syntax highlighting
	set nowrap                     " do not wrap lines
	set nonumber                   " no line numbers
	set cursorline                 " cursor line highlghted
	" text indentation
	set autoindent                 " preserve indentation
	set tabstop=4                  " display tab 4 colums wide
	set softtabstop=4
	set shiftwidth=4
	set noexpandtab                " do not use spaces instead of tabs

	set hlsearch                   " highlight search results
" }}

" Vundle installation {{
	let vundle_readme=expand("~/.vim/bundle/vundle/README.md")
	if !filereadable(vundle_readme) 
		"if !isdirectory("~/.vim/bundle/vundle")
		echo "Installing Vundle.."
		echo ""
		silent !mkdir -p ~/.vim/bundle
		silent !git clone https://github.com/gmarik/vundle ~/.vim/bundle/vundle
	endif
" }}

" Vundle config {{
	set rtp+=~/.vim/bundle/vundle/
	call vundle#rc()
	Bundle 'gmarik/vundle'
" }}


" Color scheme {{
	Bundle 'chriskempson/base16-vim'
	Bundle 'w0ng/vim-hybrid'
	set background=dark
	let base16colorspace=256  " Access colors present in 256 colorspace
	let g:hybrid_use_Xresources = 1
	colorscheme hybrid
" }}
" }}



filetype plugin indent on     " required!

" Auto Commands {{
if has("autocmd")
	autocmd! bufwritepost .vimrc source $MYVIMRC " source the vimrc file after saving it

	" Ruby files
	autocmd BufNewFile,BufRead *file setfiletype ruby 
endif
" }}

