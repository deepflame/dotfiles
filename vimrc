set nocompatible               " disable vi compatibility
filetype off                   " required by Vundle

" Vundle setup {{
	let vundle_readme=expand("~/.vim/bundle/vundle/README.md")
	if !filereadable(vundle_readme) 
		"if !isdirectory("~/.vim/bundle/vundle")
		echo "Installing Vundle.."
		echo ""
		silent !mkdir -p ~/.vim/bundle
		silent !git clone https://github.com/gmarik/vundle ~/.vim/bundle/vundle
	endif

	set rtp+=~/.vim/bundle/vundle/
	call vundle#rc()
" }}

" Bundles {{
	Bundle 'gmarik/vundle'

	" search with ag/ack
	if executable('ag')
		Bundle 'rking/ag.vim'
	elseif executable('ack-grep') || executable('ack')
		Bundle 'mileszs/ack.vim'
	endif

	" git support
	if executable('git')
		Bundle 'tpope/vim-fugitive'
	endif

	" auto completion
	if has('python')
		Bundle 'Valloric/YouCompleteMe'
	endif

	" color schemes
	Bundle 'chriskempson/base16-vim'
	Bundle 'w0ng/vim-hybrid'

	Bundle 'kien/ctrlp.vim'
" }}

filetype plugin indent on     " required by Vundle


" General {{
	set nobackup
	set noswapfile

	" ui
	syntax on                      " syntax highlighting
	set nowrap                     " do not wrap lines
	set nonumber                   " no line numbers
	set norelativenumber
	set cursorline                 " cursor line highlghted
	set nolist                     " do not display invisible chars
	set listchars=tab:▸\ ,eol:¬    " Use the same symbols as TextMate for tabstops and EOLs

	set showmatch                  " show matching brackets/paranthesis

	" text indentation
	set autoindent                 " preserve indentation
	set tabstop=4                  " display tab 4 colums wide
	set softtabstop=4
	set shiftwidth=4
	set noexpandtab                " do not use spaces instead of tabs

	set splitbelow
	set splitright

	" search
	set hlsearch                   " highlight search results


" }}


" Color scheme {{
	set background=dark
	let base16colorspace=256  " Access colors present in 256 colorspace
	let g:hybrid_use_Xresources = 1
	colorscheme hybrid
" }}



filetype plugin indent on     " required!

" Auto Commands {{
if has("autocmd")
	autocmd! BufWritePost .vimrc source $MYVIMRC " source the vimrc file after saving it

	" Ruby files
	autocmd BufNewFile,BufRead *file setfiletype ruby 
endif
" }}

