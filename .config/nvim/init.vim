" first things first...
set nocompatible
" use system Python (do it at the beginning)
let g:python_host_prog = '/usr/bin/python'
let g:python3_host_prog = '/usr/bin/python3'



" ======= plugins =============================================================
" vim-plug, usage: 'Plug<CMD>'

" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
"call plug#begin(stdpath('data') . '/plugged')

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


"Plug 'neovim/nvim-lspconfig'


" linting
"Plug 'neomake/neomake'
" Plug 'w0rp/ale'  " maybe...??


" completion
"Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
"let g:deoplete#enable_at_startup = 1

" Plug 'hrsh7th/nvim-compe'  " maybe...?
" Plug 'hrsh7th/nvim-cmp'  " maybe...?
" Plug 'Shougo/ddc.vim'  " maybe...?


" ==== language specific plugins
" == Terraform / HCL
"Plug 'hashivim/vim-terraform'
"Plug 'juliosueiras/vim-terraform-completion'


" == Markdown
" If you don't have nodejs and yarn
" use pre build, add 'vim-plug' to the filetype list so vim-plug can update this plugin
" see: https://github.com/iamcco/markdown-preview.nvim/issues/50
" Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
" If you have nodejs and yarn
"Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }

" == JavaScript
"Plug 'posva/vim-vue'


" Initialize plugin system
"call plug#end()
" ======= end of plugins ======================================================


if filereadable(expand("~/.vimrc.common"))
  source ~/.vimrc.common
endif


" ==== mappings
" completion (Tab and Shift+Tab cycle through popup menu, Enter / Esc to select/close)
inoremap <silent><expr><tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <silent><expr><s-tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

" Esc will switch to terminal normal mode
tnoremap <Esc> <C-\><C-n>

" open terminal in split
command! T TV
command! TV vsplit | terminal zsh
command! TH split  | terminal zsh
" TODO: command! T  (splitright == 1 ? ':TV' : ':TH')  ...syntax not quite right


" to be tried out
" nnoremap <Enter> o<ESC>
