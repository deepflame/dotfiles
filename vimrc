set nocompatible               " disable vi compatibility

"
" General
"

set cmdheight=2		" Better display for messages
set updatetime=300	" You will have bad experience for diagnostic messages when it's default 4000.

set shortmess+=c	" don't give |ins-completion-menu| messages.

" files
set nobackup
set noswapfile
set hidden                     " hidden buffers without confirmation
set encoding=UTF-8

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
set background=dark           " tell vim we use a light background

" text indentation (managed by editorconfig)
set tabstop=4                  " display tab 4 colums wide
set softtabstop=4
set shiftwidth=4
set noexpandtab                " do not use spaces instead of tabs
set autoindent                 " use indent from the previous line
set smarttab                   " tabs according to shiftwidth

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


"
" Mappings
"

let mapleader = "\<space>"
"let mapleader = ","

" edit vim files
nmap <leader>ve :edit ~/.vimrc<cr>
"nmap <leader>vc :edit ~/.config/nvim/coc-settings.json<cr>
nmap <leader>vr :source ~/.vimrc<cr>

" easy window navigation
noremap <C-h>  <C-w>h
noremap <C-j>  <C-w>j
noremap <C-k>  <C-w>k
noremap <C-l>  <C-w>l

tnoremap <leader><Esc> <C-\><C-n>
"	tnoremap <C-Esc> <C-\><C-n>

" vim-powered terminal in split window
"map <Leader>t :term ++close<cr>
"tmap <Leader>t <c-w>:term ++close<cr>
noremap <Leader>t :split term://bash<cr>
noremap <Leader>tl :split term://lazygit<cr>

" vim-powered terminal in new tab
nmap <Leader>T :tab term<cr>
tmap <Leader>T <c-w>:tab term<cr>


"	autocmd! BufWritePost .vimrc source $MYVIMRC

"
" Plugins
"

" Automatically install vim-plug
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
	silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
	autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin(data_dir . '/plugins')

source ~/dotfiles/vim-plugins/airline.vim
source ~/dotfiles/vim-plugins/editorconfig.vim	"
source ~/dotfiles/vim-plugins/floaterm.vim		" floating terminal
source ~/dotfiles/vim-plugins/fugitive.vim		" git integration
source ~/dotfiles/vim-plugins/nerdtree.vim		" tree explorer
source ~/dotfiles/vim-plugins/polyglot.vim		" collection of language packs
source ~/dotfiles/vim-plugins/solarized.vim		" color scheme
source ~/dotfiles/vim-plugins/surround.vim		" delete/change/add parentheses/quotes/xml-tags/much more with ease

call plug#end()
doautocmd User PlugLoaded " fire user event


"
" Misc
"

augroup FileTypeOverrides
	autocmd!
	" special Ruby file types
	autocmd BufNewFile,BufRead Gemfile setfiletype ruby
	autocmd BufNewFile,BufRead Vagrantfile setfiletype ruby
augroup END

