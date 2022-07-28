------------------------------------------------
----------- PARAMÈTRES DE NEOVIM ---------------
------------------------------------------------

-- ALIAS
local cmd = vim.cmd
local exec = vim.api.nvim_exec
local fn = vim.fn
local g = vim.g
local opt = vim.opt


-- GÉNÉRAL
opt.mouse = 'a'
opt.clipboard = 'unnamedplus'

-- INDENTATION
opt.expandtab = true
opt.shiftwidth = 4
opt.smartindent = true
opt.tabstop = 4

-- STYLE
opt.termguicolors = true
opt.number = true
opt.relativenumber = true
opt.scrolloff = 7
opt.sidescrolloff = 8
opt.signcolumn = 'yes'
opt.cursorline = true
opt.wrap = false
opt.colorcolumn = "80,120"

-- NETRW
g.netrw_banner = 0
g.netrw_liststyle = 3
g.netrw_browse_split = 4
g.netrw_altv = 1
g.netrw_winsize = 15

-- CMP
opt.completeopt = {'menu', 'menuone', 'noselect'}

-- DÉSACTIVATION DES PLUGINS INTÉGRÉS
local disabled_built_ins = {
    "gzip",
    "zip",
    "zipPlugin",
    "tar",
    "tarPlugin",
    "getscript",
    "getscriptPlugin",
    "vimball",
    "vimballPlugin",
    "2html_plugin",
    "logipat",
    "rrhelper",
    "spellfile_plugin",
    "matchit"
}

for _, plugin in pairs(disabled_built_ins) do
    vim.g["loaded_" .. plugin] = 1
end
