"call plug#begin('~/.vim/plugged')
call plug#begin()

let mapleader = ","

" color schemes
Plug 'altercation/vim-colors-solarized'
Plug 'changyuheng/color-scheme-holokai-for-vim'
Plug 'chriskempson/base16-vim'

" editorconfig
Plug 'editorconfig/editorconfig-vim'
let g:EditorConfig_exclude_patterns = ['fugitive://.*', 'scp://.*']

" misc tpope Plugs
Plug 'tpope/vim-commentary' " comment stuff out (e.g. gcc)
" Plug 'tpope/vim-endwise'
Plug 'tpope/vim-repeat' " better repeat after mapping
Plug 'tpope/vim-surround'

" search with ag/ack
if executable('ack-grep') || executable('ack')
  Plug 'mileszs/ack.vim'
  cnoreabbrev Ack Ack!
elseif executable('ag')
  Plug 'mileszs/ack.vim'
  let g:ackprg = 'ag --vimgrep --smart-case'
  cnoreabbrev ag Ack!
  cnoreabbrev aG Ack!
  cnoreabbrev Ag Ack!
  cnoreabbrev AG Ack!
endif

" git support
if executable('git')
  Plug 'tpope/vim-fugitive'
  "Plug 'airblade/vim-gitgutter' " see git diff in gutter
endif

" ctag support
"Plug 'ludovicchabant/vim-gutentags'
let g:gutentags_cache_dir = '~/.tags_cache'

" file overview
"Plug 'majutsushi/tagbar'
let g:tagbar_type_elixir = {
    \ 'ctagstype' : 'elixir',
    \ 'kinds' : [
        \ 'f:functions',
        \ 'functions:functions',
        \ 'c:callbacks',
        \ 'd:delegates',
        \ 'e:exceptions',
        \ 'i:implementations',
        \ 'a:macros',
        \ 'o:operators',
        \ 'm:modules',
        \ 'p:protocols',
        \ 'r:records'
    \ ]
\ }
let g:tagbar_type_markdown = {
  \ 'ctagstype' : 'markdown',
  \ 'kinds' : [
      \ 'h:Heading_L1',
      \ 'i:Heading_L2',
      \ 'k:Heading_L3'
  \ ]
\ }

" language support

" language support - Crystal
Plug 'rhysd/vim-crystal'

" language support - terraform
Plug 'hashivim/vim-terraform'

" autocomplete
source ~/.vim-plugs-coc.vim

" completion for quotes, parens, brackets
Plug 'Raimondi/delimitMate'

" create your own text objects (dependency for ruby blocks)
Plug 'kana/vim-textobj-user'

" fuzzy finder
Plug 'ctrlpvim/ctrlp.vim'
let g:ctrlp_working_path_mode = '' " don't be smart about working dir
if executable('ag')
  let g:ctrlp_user_command = 'ag %s -l --nocolor --hidden -g ""' " use ag for lightning fast search
  let g:ctrlp_use_caching = 0 " no need for caching because ag is fast enough
else
  let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$|node_modules$|bower_components$|bundle$|cache$|tmp$|temp$|\_build$'
endif

" (used for deoplete as well)
Plug 'junegunn/fzf'

" auto change workdir
Plug 'airblade/vim-rooter'

" better file explorer
Plug 'scrooloose/nerdtree'

" better status line
Plug 'bling/vim-airline'

" syntax check
if has('job')
  Plug 'w0rp/ale'
  "let g:ale_sign_column_always = 1

  " airline extension for ale
  let g:airline#extensions#ale#enabled = 1
else
  Plug 'scrooloose/syntastic'
  let g:syntastic_check_on_open = 1
  let g:syntastic_javascript_checkers = ['eslint']
  let g:syntastic_javascript_eslint_exec = 'eslint_d'

  set statusline+=%#warningmsg#
  set statusline+=%{SyntasticStatuslineFlag()}
  set statusline+=%*

  let g:syntastic_always_populate_loc_list = 1
  let g:syntastic_loc_list_height = 5
  let g:syntastic_auto_loc_list = 0
  let g:syntastic_check_on_open = 1
  let g:syntastic_check_on_wq = 1

  "let g:syntastic_error_symbol = '❌'
  "let g:syntastic_style_error_symbol = '⁉️'
  "let g:syntastic_warning_symbol = '⚠️'
  "let g:syntastic_style_warning_symbol = '💩'

  highlight link SyntasticErrorSign SignColumn
  highlight link SyntasticWarningSign SignColumn
  highlight link SyntasticStyleErrorSign SignColumn
  highlight link SyntasticStyleWarningSign SignColumn

  " airline extension for syntastic
  let g:airline#extensions#syntastic#enabled = 1
endif

" tmux
"Plug 'tmux-Plugs/vim-tmux' " syntax hightlighting
"Plug 'tmux-Plugs/vim-tmux-focus-events' " better focus in tmux

" Dash.app support for Mac
"Plug 'rizzatti/dash.vim'

" multi language support
Plug 'sheerun/vim-polyglot'

" ployglot: handlebars config
let g:mustache_abbreviations = 1 " enable abbeviations
" ployglot: React JSX config
let g:jsx_ext_required = 0 " default 1
let g:jsx_pragma_required = 0 " default 0

" fast html editing
Plug 'mattn/emmet-vim'

" css colors
Plug 'ap/vim-css-color'

" phoenix support
Plug 'c-brenn/phoenix.vim'
Plug 'tpope/vim-projectionist' " required for some navigation features

" ruby/rails support
Plug 'nelstrom/vim-textobj-rubyblock'
runtime macros/matchit.vim
Plug 'tpope/vim-rails'

" sublime text like multiple cursors
"	Plug 'terryma/vim-multiple-cursors'

" Initialize plugin system
call plug#end()

" vi:syntax=vim
