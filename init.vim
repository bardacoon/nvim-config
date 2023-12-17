let mapleader = " "
set cursorline
set relativenumber
set number
set tabstop=4
set shiftwidth=4
set expandtab
set nowrap
set ignorecase
set smartcase

const iao = "iao"
const boh = "BOH"

" For errors
nnoremap <leader>gh :lua vim.diagnostic.setloclist()<CR>
nnoremap gh :lua vim.diagnostic.open_float()<CR>
nnoremap [d :lua vim.diagnostic.goto_prev()<CR>
nnoremap ]d :lua vim.diagnostic.goto_next()<CR>

map <C-CR> :w <CR> :!g++ % && ./a.out <CR>

nnoremap <Caps>
cnoremap <C-j> <C-n> 
cnoremap <C-k> <C-p> 
nnoremap <C-b> :NvimTreeToggle<CR>
nnoremap <F2> :lua vim.lsp.buf.rename()<CR> 
nnoremap gd :lua vim.lsp.buf.definition()<CR>
nnoremap K :lua vim.lsp.buf.hover()<CR>
nnoremap gr :lua vim.lsp.buf.references()<CR>
vnoremap = :PrettierPartial<CR>

command! Getfulldate execute "normal! a=" . strftime("%A %-d %B %Y") . "="
command! Gethour execute "normal! a_" . strftime("%H:%M:%S") . "_"
command! VimwikiMedia execute "normal! a{{file:./../media/}}<Esc>h" | startinsert
command! Light execute "normal! :colorscheme github_light<CR> :set background=light"

call plug#begin()
" Themes
Plug 'nyoom-engineering/oxocarbon.nvim'
Plug 'NLKNguyen/papercolor-theme'
Plug 'navarasu/onedark.nvim'
Plug 'sainnhe/everforest'
Plug 'fcpg/vim-fahrenheit'
Plug 'catppuccin/nvim', { 'as': 'catppuccin' }
Plug 'projekt0n/github-nvim-theme'

" Aesthetic
Plug 'nvim-tree/nvim-web-devicons'
Plug 'nvim-lualine/lualine.nvim'

" Lsp
Plug 'williamboman/mason.nvim' | Plug 'williamboman/mason-lspconfig.nvim'
Plug 'joeveiga/ng.nvim'
Plug 'wuelnerdotexe/vim-astro'
Plug 'roobert/tailwindcss-colorizer-cmp.nvim'

" Git
Plug 'tpope/vim-fugitive'
Plug 'NeogitOrg/neogit'

" Core
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'vimwiki/vimwiki' " wiki
Plug 'tpope/vim-surround' " surround
Plug 'alvan/vim-closetag' " Closes tags
Plug 'folke/which-key.nvim' " keymap suggestions
Plug 'm4xshen/autoclose.nvim' " Close parenthesis and ''
Plug 'nvim-tree/nvim-tree.lua' " file tree
Plug 'lukas-reineke/indent-blankline.nvim' " this adds the lines between divs of the same level
Plug 'nvim-telescope/telescope.nvim' | Plug 'nvim-lua/plenary.nvim' | Plug 'smartpde/telescope-recent-files' " find files 
Plug 'hrsh7th/nvim-cmp' | Plug 'neovim/nvim-lspconfig' | Plug 'hrsh7th/cmp-nvim-lsp' | Plug 'hrsh7th/cmp-buffer' | Plug 'hrsh7th/cmp-path' | Plug 'hrsh7th/cmp-cmdline' | Plug 'L3MON4D3/LuaSnip' " Completion
Plug 'rafamadriz/friendly-snippets' | Plug 'saadparwaiz1/cmp_luasnip' " Snippets
Plug 'tpope/vim-sleuth' " Automatic tab size based on files
Plug 'prettier/vim-prettier', { 'do': 'npm install --frozen-lockfile --production' } " Prettier
Plug 'tpope/vim-commentary' " Comment code
Plug 'junegunn/fzf.vim' | Plug 'junegunn/fzf', { 'do': { -> fzf#install() } } " Fuzzy Finder
Plug 'barrett-ruth/live-server.nvim' " To start live server
Plug 'tpope/vim-repeat' " to repeat actions
Plug 'mg979/vim-visual-multi', {'branch': 'master'} " Multicursor
Plug 'mattn/emmet-vim' " Emmet

call plug#end()

:luafile ~/.config/nvim/plugins/vim.lua
:luafile ~/.config/nvim/plugins/telescope.lua
:luafile ~/.config/nvim/plugins/which-key.lua
:luafile ~/.config/nvim/plugins/autoclose.lua
:luafile ~/.config/nvim/plugins/everforest.lua
:luafile ~/.config/nvim/plugins/nvim-tree.lua
:luafile ~/.config/nvim/plugins/nvim-cmp.lua
:luafile ~/.config/nvim/plugins/mason.lua
:luafile ~/.config/nvim/plugins/lualine.lua
:luafile ~/.config/nvim/plugins/nvim-treesitter.lua
:luafile ~/.config/nvim/plugins/tailwindcss.lua
:luafile ~/.config/nvim/plugins/vim-closetag.lua
:luafile ~/.config/nvim/plugins/vim-closetag.lua
:luafile ~/.config/nvim/plugins/neogit.lua
:luafile ~/.config/nvim/plugins/ng.lua
:luafile ~/.config/nvim/plugins/live-server.lua

colorscheme everforest
set background=dark
silent! call repeat#set("\<Plug>MyWonderfulMap", v:count) " This makes vim surround repeatable
