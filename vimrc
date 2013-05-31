" General {{
    set nocompatible               " disable vi compatibility
    filetype off                   " required for Vundle

    syntax on                      " syntax highlighting
    set nonumber                   " no line numbers
    set cursorline                 " cursor line highlghted
    set hlsearch                   " highlight search results
    set nowrap                     " do not wrap lines
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
    let base16colorspace=256  " Access colors present in 256 colorspace
    colorscheme base16-default
" }}



filetype plugin indent on     " required!
