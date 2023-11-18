let mapleader = " "
set relativenumber
set number
set tabstop=4
set shiftwidth=4
set expandtab
set nowrap

" For errors
nnoremap <leader>gh :lua vim.diagnostic.setloclist()<CR>
nnoremap gh :lua vim.diagnostic.open_float()<CR>
nnoremap [d :lua vim.diagnostic.goto_prev()<CR>
nnoremap ]d :lua vim.diagnostic.goto_next()<CR>

nnoremap <C-n> :NvimTreeToggle<CR>
nnoremap <F2> :lua vim.lsp.buf.rename()<CR> 
nnoremap gd :lua vim.lsp.buf.definition()<CR>
vnoremap = :PrettierPartial<CR>
nnoremap K :lua vim.lsp.buf.hover()<CR>
nnoremap gr :lua vim.lsp.buf.references()<CR>

command! Getfulldate execute "normal! a=" . strftime("%A %-d %B %Y") . "="
command! Gethour execute "normal! a_" . strftime("%H:%M:%S") . "_"
command! VimwikiImage execute "normal! a{{file:./images/}}<Esc>h" | startinsert

call plug#begin()
Plug 'nvim-tree/nvim-web-devicons'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'vimwiki/vimwiki' " wiki
Plug 'sainnhe/everforest' " theme
Plug 'tpope/vim-surround' " surround
Plug 'alvan/vim-closetag' " Closes tags
Plug 'folke/which-key.nvim' " keymap suggestions ciao
Plug 'm4xshen/autoclose.nvim' " Close parenthesis and ''
Plug 'nvim-tree/nvim-tree.lua' " file tree
Plug 'lukas-reineke/indent-blankline.nvim' " this adds the lines between divs of the same level
Plug 'nvim-telescope/telescope.nvim' | Plug 'nvim-lua/plenary.nvim' " find files 
Plug 'hrsh7th/nvim-cmp' | Plug 'neovim/nvim-lspconfig' | Plug 'hrsh7th/cmp-nvim-lsp' | Plug 'hrsh7th/cmp-buffer' | Plug 'hrsh7th/cmp-path' | Plug 'hrsh7th/cmp-cmdline' | Plug 'L3MON4D3/LuaSnip' " Completion
Plug 'roobert/tailwindcss-colorizer-cmp.nvim' " Tailwindcss
Plug 'williamboman/mason.nvim' | Plug 'williamboman/mason-lspconfig.nvim' " Mason
Plug 'nvim-lualine/lualine.nvim' " Cool line at the bottom
Plug 'rafamadriz/friendly-snippets' | Plug 'saadparwaiz1/cmp_luasnip' " Snippets
Plug 'tpope/vim-fugitive' " For git commands
Plug 'tpope/vim-sleuth' " Automatic tab size based on files
Plug 'prettier/vim-prettier', { 'do': 'npm install --frozen-lockfile --production' } " Prettier
Plug 'tpope/vim-commentary' " Comment code
call plug#end()

:luafile ~/.config/nvim/plugins/telescope.lua
:luafile ~/.config/nvim/plugins/which-key.lua
:luafile ~/.config/nvim/plugins/autoclose.lua
:luafile ~/.config/nvim/plugins/vim-closetag.lua
:luafile ~/.config/nvim/plugins/everforest.lua
:luafile ~/.config/nvim/plugins/nvim-tree.lua
:luafile ~/.config/nvim/plugins/nvim-cmp.lua
:luafile ~/.config/nvim/plugins/mason.lua
:luafile ~/.config/nvim/plugins/lualine.lua
:luafile ~/.config/nvim/plugins/nvim-treesitter.lua
:luafile ~/.config/nvim/plugins/tailwindcss.lua
