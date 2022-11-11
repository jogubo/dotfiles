-------------------------------------------------
------------------- PLUGINS  --------------------
-------------------------------------------------

vim.cmd 'packadd paq-nvim'
local paq = require('paq').paq
paq {'savq/paq-nvim', opt = true}

-- Git
paq {'tpope/vim-fugitive'}

-- LSP-Confing
paq {'neovim/nvim-lspconfig'}

-- Nord Theme
paq {'shaunsingh/nord.nvim'}

-- Bufbar & Hardline
paq {'ojroques/nvim-bufbar'}
paq {'ojroques/nvim-hardline'}

-- TreeSitter
paq {'nvim-treesitter/nvim-treesitter'}
paq {'nvim-treesitter/nvim-treesitter-textobjects'}

-- Plenary
paq {'nvim-lua/plenary.nvim'}

-- Telescope
paq {'nvim-telescope/telescope.nvim'}

-- CMP
paq {'hrsh7th/nvim-cmp'}
paq {'hrsh7th/cmp-nvim-lsp'}
paq {'hrsh7th/cmp-buffer'}
paq {'dcampos/cmp-snippy'}

-- Snippy
paq {'dcampos/nvim-snippy'}
paq {'honza/vim-snippets'}

-- Comment
paq {'tpope/vim-commentary'}

-- VGit
paq {'tanvirtin/vgit.nvim'}

-- Colorizer
paq {'norcalli/nvim-colorizer.lua'}

-- Indent
paq {'lukas-reineke/indent-blankline.nvim'}
