Plug 'altercation/vim-colors-solarized'

try
  colorscheme solarized
catch /^Vim\%((\a\+)\)\=:E185/
  colorscheme default
endtry
