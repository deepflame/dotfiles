Plug 'altercation/vim-colors-solarized'

try
  colorscheme solarized
  set background=dark            " tell vim we use a light/dark background
  let g:solarized_termcolors=256 " fix solarized colors in xterm
catch /^Vim\%((\a\+)\)\=:E185/
  colorscheme default
endtry

