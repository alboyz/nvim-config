set nocompatible
syntax on
set number
set mouse=a
set encoding=utf-8
set shiftwidth=4
set wildmode=longest,list 
set cc=80
set autoindent

imap jj <esc>
nmap io <C-c>
nmap <space> :
nmap nn :bn<CR>
nmap pp :bp<CR>
nmap ne :new<CR>
nmap nv :vnew<CR>
nmap zz gg=G<CR>
set noswapfile


" Line bubbling
" Use these two if you don't have prettier
"nnoremap <silent> <c-j> :m .+1<CR>==
"nnoremap <silent> <c-k> :m .-2<CR>==
nnoremap <silent> <c-j> :m .+1<CR>
nnoremap <silent> <c-k> :m .-2<CR>
inoremap <silent> <c-j> <Esc>:m .+1<CR>==gi
inoremap <silent> <c-k> <Esc>:m .-2<CR>==gi
vnoremap <silent> <c-j> :m '>+1<CR>gv=gv
vnoremap <silent> <c-k> :m '<-2<CR>gv=gv



"copy paste
vnoremap <C-c> "+y
map <C-p> "+p
vnoremap <C-c> "*y :let @+=@*<CR>


autocmd! bufwritepost .vimrc source %


set tabstop=2
set nocompatible              " be iMproved, required
filetype off                  " required


call plug#begin('/home/ali/.config/nvim/plugged')
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'sheerun/vim-polyglot'
Plug 'mattn/emmet-vim'
Plug 'scrooloose/nerdtree'
Plug 'ryanoasis/vim-devicons'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'simeji/winresizer'
Plug 'jiangmiao/auto-pairs'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'sheerun/vim-polyglot'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

call plug#end()

filetype plugin indent on    " required


colorscheme dracula


"--EMMET CONFIG--"
let g:user_emmet_mode='a'    "enable all function in all mode.
let g:user_emmet_leader_key=','


" <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"


"nerdtree
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
map eee :NERDTreeToggle<CR>


"airline-themes
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='badwolf'


"winresizer
" If you want to start window resize mode by `Ctrl+T`
let g:winresizer_start_key = '<C-T>'

" If you cancel and quit window resize mode by `z` (keycode 122)
let g:winresizer_keycode_cancel = 122


"Buffer switch
nmap mm :ls<CR>


"-- FOLDING --
set foldmethod=syntax "syntax highlighting items specify folds
set foldcolumn=1 "defines 1 col at window left, to indicate folding
let javaScript_fold=1 "activate folding by JS syntax
set foldlevelstart=88 "start file with all folds opened


