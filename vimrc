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

	" color schemes
	Bundle 'chriskempson/base16-vim'
	Bundle 'w0ng/vim-hybrid'

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

	" fuzzy finder
	Bundle 'kien/ctrlp.vim'
	let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$|node_modules$|components$'

	" better status line
	Bundle 'Lokaltog/vim-powerline'

	" syntax check
	Bundle 'scrooloose/syntastic'

	" css colors
	Bundle 'ap/vim-css-color'

	" better javascript support
	Bundle "pangloss/vim-javascript"

	" coffeescript support
	Bundle 'kchmck/vim-coffee-script'

	" handlebars support
	Bundle 'nono/vim-handlebars'
" }}

filetype plugin indent on     " required by Vundle


" General {{

	" files
	set nobackup
	set noswapfile

	" text ui
	syntax on                      " syntax highlighting
	set nowrap                     " do not wrap lines
	set nonumber                   " no line numbers
	set norelativenumber
	set cursorline                 " cursor line highlghted
	set nolist                     " do not display invisible chars
	set listchars=tab:▸\ ,eol:¬    " Use the same symbols as TextMate for tabstops and EOLs

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

	set splitbelow
	set splitright

	" search
	set hlsearch                   " highlight search results

	" ui
	set noshowmode                 " do not show vim mode (already have powerline)
	set noshowcmd
	set laststatus=2               " always show status line
	set mouse=a                    " enable mouse in text mode
" }}

" Mappings {{

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

