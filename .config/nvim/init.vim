let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin(stdpath('data').'/plugged')

Plug 'morhetz/gruvbox'
Plug 'itchyny/lightline.vim'
Plug 'lervag/vimtex'

let g:vimtex_compiler_method='tectonic'
let g:vimtex_compiler_progname = 'nvr'
let g:vimtex_view_method='zathura'
set conceallevel=1
let g:tex_conceal='abdmg'
let g:vimtex_fold_enabled=1
let g:vimtex_fold_manual=1

Plug 'sirver/ultisnips'

let g:UltiSnipsExpandTrigger = '<tab>'
let g:UltiSnipsJumpForwardTrigger = '<tab>'
let g:UltiSnipsJumpBackwardTrigger = '<s-tab>'

call plug#end()

set number relativenumber

set termguicolors
colorscheme gruvbox
