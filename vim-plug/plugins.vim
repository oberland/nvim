call plug#begin('~/.config/nvim/autoload/plugged')
Plug 'morhetz/gruvbox'
Plug 'scrooloose/nerdtree' |
\ Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'jremmen/vim-ripgrep'
Plug 'tpope/vim-fugitive'
Plug 'vim-airline/vim-airline'
Plug 'vim-utils/vim-man'
Plug 'leafgarland/typescript-vim'
Plug 'mbbill/undotree'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'junegunn/fzf', {'do': { -> fzf#install() }}
Plug 'junegunn/fzf.vim'
Plug 'stsewd/fzf-checkout.vim'
Plug 'f-person/git-blame.nvim'
call plug#end()
