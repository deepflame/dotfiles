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
