" General {{
    set nocompatible               " disable vi compatibility
    filetype off                   " required for Vundle

    syntax on                      " enable syntax coloring
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
    set background=dark

    Bundle 'chriskempson/base16-vim'
    colorscheme base16-default
    let base16colorspace=256  " Access colors present in 256 colorspace
" }}



filetype plugin indent on     " required!
"
" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle command are not allowed..
