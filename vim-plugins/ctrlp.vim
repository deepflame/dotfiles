" fuzzy finder
Plug 'ctrlpvim/ctrlp.vim'

let g:ctrlp_working_path_mode = '' " don't be smart about working dir
if executable('ag')
  let g:ctrlp_user_command = 'ag %s -l --nocolor --hidden -g ""' " use ag for lightning fast search
  let g:ctrlp_use_caching = 0 " no need for caching because ag is fast enough
else
  let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$|node_modules$|bower_components$|bundle$|cache$|tmp$|temp$|\_build$'
endif

