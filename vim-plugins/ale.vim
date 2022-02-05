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
