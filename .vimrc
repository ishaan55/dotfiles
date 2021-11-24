
" =====================================
" \ \    / /_   _|  \/  |  __ \ / ____|
"  \ \  / /  | | | \  / | |__) | |     
"   \ \/ /   | | | |\/| |  _  /| |     
"    \  /   _| |_| |  | | | \ \| |____ 
"     \/   |_____|_|  |_|_|  \_\\_____|
" =====================================                                      


syntax on

set viminfo=""
set mouse=a
set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
" set expandtab   " Tab to spaces
set smartindent
set relativenumber
set nu
set nowrap
"set smartcase
set noswapfile
set incsearch
set noshowmode   " To be used with lightline

" Mapping leader to <SPACE>
nnoremap <SPACE> <Nop>
let mapleader=" "

filetype plugin on

" Marksown syntax highlighting
au BufNewFile,BufFilePre,BufRead *.md set filetype=markdown

" Plugins
call plug#begin('~/.vim/plugged')

Plug 'morhetz/gruvbox'
Plug 'preservim/nerdtree'
Plug 'preservim/nerdcommenter'
Plug 'frazrepo/vim-rainbow'
Plug 'itchyny/lightline.vim'
Plug 'tbastos/vim-lua'
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
Plug 'vim-python/python-syntax'

call plug#end()

colorscheme gruvbox
set background=dark

" Transparent background
hi Normal guibg=NONE ctermbg=NONE  

" Remapping key to toggle Nerdtree
nnoremap <C-t> :NERDTreeToggle<CR>

" Closing Brackets and quotes
inoremap ( ()<Esc>i
inoremap { {}<Esc>i
inoremap [ []<Esc>i
inoremap < <><Esc>i
inoremap ' ''<Esc>i
inoremap " ""<Esc>i

" Lightline configs
set laststatus=2
let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ }

" activating rainbow brackets 
let g:rainbow_active = 1

noremap <LEFT> <nop>
noremap <RIGHT> <nop>
noremap <UP> <nop>
noremap <DOWN> <nop>
