Plug 'altercation/vim-colors-solarized'

try
  colorscheme solarized
  let g:solarized_termcolors=256 " fix solarized colors in xterm
catch /^Vim\%((\a\+)\)\=:E185/
  colorscheme default
endtry
