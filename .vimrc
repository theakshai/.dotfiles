"Basic Settings 
syntax on
set shiftwidth=4
set smartindent
set autoindent
set termguicolors
set number
set relativenumber
set incsearch




"==============================Plugin Management==============================

call plug#begin()

Plug 'neoclide/coc.nvim', {'branch': 'release'} 
Plug 'morhetz/gruvbox'
Plug 'scrooloose/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'ryanoasis/vim-devicons'
Plug 'scrooloose/nerdcommenter'
Plug 'ctrlpvim/ctrlp.vim' 

call plug#end()


set background=dark
colorscheme gruvbox

"filetype plugin on


"========================================Key Mappings========================================
let mapleader = " " 

inoremap jk <Esc>
nnoremap <C-b> :NERDTreeToggle<CR>
"====Coc settings====

":CocInstall coc-tsserver coc-json coc-html coc-css
":CocInstall coc-emmet
":CocInstall coc-prettier

"autocmd FileType json syntax match Comment +\/\/.\+$+


"Opening CocConfig File 

function! SetupCommandAbbrs(from, to)
  exec 'cnoreabbrev <expr> '.a:from
        \ .' ((getcmdtype() ==# ":" && getcmdline() ==# "'.a:from.'")'
        \ .'? ("'.a:to.'") : ("'.a:from.'"))'
endfunction

" Use C to open coc config
call SetupCommandAbbrs('C', 'CocConfig')






