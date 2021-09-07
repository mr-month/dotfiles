
" ======= plugins =============================================================
" vim-plug, usage: 'Plug<CMD>'

" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin(stdpath('data') . '/plugged')

" Make sure you use single quotes

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
"Plug 'junegunn/vim-easy-align'

" Any valid git URL is allowed
"Plug 'https://github.com/junegunn/vim-github-dashboard.git'

" Multiple Plug commands can be written in a single line using | separators
"Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

" On-demand loading
"Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
"Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

" Using a non-default branch
"Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }

" Using a tagged release; wildcard allowed (requires git 1.9.2 or above)
"Plug 'fatih/vim-go', { 'tag': '*' }

" Plugin options
"Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }

" Plugin outside ~/.vim/plugged with post-update hook
"Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

" Unmanaged plugin (manually installed and updated)
"Plug '~/my-prototype-plugin'


Plug 'neovim/nvim-lspconfig'

" Initialize plugin system
call plug#end()
" ======= end of plugins ======================================================


set nocompatible
set number relativenumber

" TODO: maybe set to 2, surely use filetype-based settings
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4
" set shiftround
set autoindent

set textwidth=100
set colorcolumn=+1

set listchars=tab:»·,trail:·,extends:>,precedes:<,nbsp:•
" TODO: leading spaces (either 'lead' or plugin to show indentation differences)
" MAYBE: eol:$

set list

set scrolloff=2

set splitright
set splitbelow

syntax on

set clipboard+=unnamedplus
