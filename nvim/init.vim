" Automatically install vim-plug
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
	silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
	autocmd VimEnter * PlugInstall -sync | source $MYVIMRC
endif

" Plugins will be downloaded under the specified directory
call plug#begin(has('nvim') ? stdpath('data') . '/plugged' : '~/.vim/plugged')

" Declare the list of plugins
Plug 'neovim/nvim-lspconfig' " nvim-lspconfig
Plug 'sonph/onehalf', { 'rtp': 'vim' } " onehalf theme
Plug 'scrooloose/nerdtree' " Thew NERD tree
Plug 'tpope/vim-fugitive' " fugitive.vim
Plug 'airblade/vim-gitgutter' " vim-gitgutter

" List ends here. Plugins become visible to Vim/Neovim after this call
call plug#end()

" Enable mouse support
set mouse=a

" Tab/space stuff
set expandtab
set tabstop=4
set shiftwidth=4

" Configure nvim-lspconfig
lua << EOF
require'lspconfig'.svls.setup{}
EOF

" Configure theme
syntax on
set t_Co=256
set cursorline
colorscheme onehalfdark
