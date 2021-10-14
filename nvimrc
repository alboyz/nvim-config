set nocompatible
syntax on
set number
set mouse=a
set encoding=utf-8
set shiftwidth=4
imap jj <esc>
nmap io <C-c>
nmap <space> :
nmap nn :bn<CR>
nmap pp :bp<CR>
nmap ne :new<CR>
nmap nv :vnew<CR>
nmap zz gg=G<CR>
nmap <leader>ou :PlantumlOpen<CR>
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


" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.config/nvim/plugged')

Plug 'sheerun/vim-polyglot'
Plug 'mattn/emmet-vim'
Plug 'scrooloose/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'simeji/winresizer'
Plug 'jiangmiao/auto-pairs'
Plug 'dense-analysis/ale'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'sheerun/vim-polyglot'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'aklt/plantuml-syntax'
Plug 'weirongxu/plantuml-previewer.vim'
Plug 'tyru/open-browser.vim'
Plug 'godlygeek/tabular'| Plug 'plasticboy/vim-markdown'
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}



call plug#end()            " required
filetype plugin indent on    " required

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







"		"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" -> Plugin (Markdown-Preview): Config & Mappings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" set to 1, nvim will open the preview window after entering the markdown buffer
" default: 0
let g:mkdp_auto_start = 1

" set to 1, the nvim will auto close current preview window when change
" from markdown buffer to another buffer
" default: 1
let g:mkdp_auto_close = 1

" set to 1, the vim will refresh markdown when save the buffer or
" leave from insert mode, default 0 is auto refresh markdown as you edit or
" move the cursor
" default: 0
let g:mkdp_refresh_slow = 0

" set to 1, the MarkdownPreview command can be use for all files,
" by default it can be use in markdown file
" default: 0
let g:mkdp_command_for_global = 1

" set to 1, preview server available to others in your network
" by default, the server listens on localhost (127.0.0.1)
" default: 0
let g:mkdp_open_to_the_world = 0

" use custom IP to open preview page
" useful when you work in remote vim and preview on local browser
" more detail see: https://github.com/iamcco/markdown-preview.nvim/pull/9
" default empty
let g:mkdp_open_ip = ''

" specify browser to open preview page
" default: ''
let g:mkdp_browser = ''

" set to 1, echo preview page url in command line when open preview page
" default is 0
let g:mkdp_echo_preview_url = 1

" a custom vim function name to open preview page
" this function will receive url as param
" default is empty
function! g:Open_browser(url)
		silent exe 'silent !open -a "Google Chrome" ' . a:url
endfunction
let g:mkdp_browserfunc = 'g:Open_browser'

" options for markdown render
" mkit: markdown-it options for render
" katex: katex options for math
" uml: markdown-it-plantuml options
" maid: mermaid options
" disable_sync_scroll: if disable sync scroll, default 0
" sync_scroll_type: 'middle', 'top' or 'relative', default value is 'middle'
"   middle: mean the cursor position alway show at the middle of the preview page
"   top: mean the vim top viewport alway show at the top of the preview page
"   relative: mean the cursor position alway show at the relative positon of the preview page
" hide_yaml_meta: if hide yaml metadata, default is 1
" sequence_diagrams: js-sequence-diagrams options
let g:mkdp_preview_options = {
						\ 'mkit': {},
						\ 'katex': {},
						\ 'uml': {},
						\ 'maid': {},
						\ 'disable_sync_scroll': 0,
						\ 'sync_scroll_type': 'middle',
						\ 'hide_yaml_meta': 1,
						\ 'sequence_diagrams': {},
						\ 'flowchart_diagrams': {}
						\ }

" use a custom markdown style must be absolute path
" like '/Users/username/markdown.css' or expand('~/markdown.css')
let g:mkdp_markdown_css = expand("~/github-markdown.css")

" use a custom highlight style must absolute path
" like '/Users/username/highlight.css' or expand('~/highlight.css')
let g:mkdp_highlight_css = ''

" use a custom port to start server or random for empty
let g:mkdp_port = ''

" preview page title
" ${name} will be replace with the file name
let g:mkdp_page_title = '「${name}」'
