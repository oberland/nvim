syntax on
set noerrorbells
set softtabstop=2
set shiftwidth=2
set tabstop=2
set expandtab
set smarttab
set smartindent
set number relativenumber
set nowrap
set smartcase
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch
set listchars=eol:¬,tab:>-,trail:~,extends:>,precedes:<,space:·
set list
set backspace=indent,eol,start
set colorcolumn=80
set laststatus=2
set pyx=3
set guicursor=n-v-c-sm:block,i-ci-ve:block,r-cr-o:hor20

highlight ColorColunm ctermbg=0 guibg=lightgrey

autocmd Filetype vuejs setlocal tabstop=2 softtabstop=0 expandtab shiftwidth=2 smarttab
autocmd Filetype typescript setlocal tabstop=2 softtabstop=2 shiftwidth=2 expandtab
autocmd Filetype javascript setlocal tabstop=2 softtabstop=2 shiftwidth= 2 expandtab

" for scss
autocmd FileType scss setl iskeyword+=_

source $HOME/.config/nvim/vim-plug/plugins.vim

colorscheme gruvbox
set background=dark

let g:ctrlp_user_command=['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']
let mapleader=" "

vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv
inoremap <C-j> <esc>:m .+1<CR>==
inoremap <C-k> <esc>:m .-2<CR>==
nnoremap <leader>J :m .+1<CR>==
nnoremap <leader>K :m .-2<CR>==

let g:netrw_browse_split = 2
let g:vrfr_rg = 'true'
let g:netrw_banner = 0
let g:netrw_winsize = 25
let NERDTreeShowHidden=1
let NERDTreeIgnore=['\.DS_Store$', '\.git$'] " ignore files in nerd tree
" Exit Vim if NERDTree is the only window remaining in the only tab.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
let NERDTreeMapOpenInTab='t'

let g:ctrlp_use_chaching=0

let g:gitblame_enabled = 0
let g:gitblame_message_template = '<summary> • <date> • <author>'

nnoremap Y y$

nnoremap n nzzzv
nnoremap N Nzzzv
nnoremap J mzJ`z

nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>
nnoremap <C-n>t :tabnew<CR>
nnoremap <C-h> :bprev<CR>
nnoremap <C-l> :bnext<CR>
nnoremap <C-j> :cnext<CR>
nnoremap <leader>t :NERDTreeToggle<CR>
nnoremap <leader>u :UndotreeShow<CR>
nnoremap <leader>ps :Rg<SPACE>
nnoremap <leader>pa :Ag<CR>
nnoremap <leader>p :CtrlP<CR>
nnoremap <silent> <leader>+ :vertical resize +5<CR>
nnoremap <silent> <leader>- :vertical resize -5<CR>

" copy and paste
vmap <C-c> "+yi
vmap <C-x> "+c
vmap <C-v> c<ESC>"+p
imap <C-v> <ESC>"+pa

let g:fzf_layout={'window': {'width': 0.8, 'height': 0.8}}
let $FZF_DEFAULT_OPTS='--reverse'
nnoremap <leader>gc :GCheckout<CR>

" go to definition
nmap <leader>gt :call CocAction('jumpDefinition', 'tabe')<CR>
nmap <leader>gd :call CocAction('jumpDefinition', 'drop')<CR>

