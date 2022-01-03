let c_no_curly_error = 1
set tags+=~/.config/nvim/systags
set spell

filetype plugin indent on

syntax on

highlight desrtSpaceBeforeTab ctermbg=red
au Syntax * syn match desrtSpaceBeforeTab / \+\ze\t/ containedin=ALL

highlight desrtTrailingSpace ctermfg=blue cterm=underline
au Syntax * syn match desrtTrailingSpace / \+$/ containedin=ALL

highlight desrtTab ctermfg=red cterm=underline
au Syntax * syn match desrtTab /\t/ containedin=ALL

set makeprg=ma
set spellcapcheck=
set nohls
set foldmethod=marker
