set nocompatible
syntax on
set number
set mouse=a
set encoding=utf-8
set shiftwidth=4
imap jj <esc>
nmap <space> :
nmap nn :bn<CR>
nmap pp :bp<CR>
nmap ne :new<CR>
nmap nv :vnew<CR>
nmap zz gg=G<CR>
nmap io <C-c>


"copy paste
vnoremap <C-c> "+y
map <C-p> "+p
vnoremap <C-c> "*y :let @+=@*<CR>

"Neotree
nnoremap <F3> :NvimTreeToggle<CR>


autocmd! bufwritepost .vimrc source %



"Plugin
call plug#begin(stdpath('data') . '/plugged')

Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.6' }
Plug 'nvim-lualine/lualine.nvim'
Plug 'nvim-tree/nvim-web-devicons' " optional
Plug 'nvim-tree/nvim-tree.lua'
Plug 'neovim/nvim-lspconfig'

call plug#end()



"require for lua config
lua require('mynamespace.telescope')
lua require('mynamespace.lualine')
lua require('mynamespace.nvim-tree')
lua require('mynamespace.nvim_web_devicons')
lua require('mynamespace.lspconfig')


"Configuring lualine in init.vim
lua << END
require('lualine').setup()
END
