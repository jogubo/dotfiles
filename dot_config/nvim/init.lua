-------------------------------------------------
----------------- INIT NEOVIM -------------------
-------------------------------------------------

local fn = vim.fn
local cmd = vim.cmd

require('settings')

function _G.load_post_plugin_config()
    require('mappings')
    require('colorscheme')
    require('pluginList')
    require('plugins')
end

local install_path = fn.stdpath('data') .. '/site/pack/paqs/start/paq-nvim'

if fn.empty(fn.glob(install_path)) > 0
then
    fn.system({'git', 'clone', '--depth=1', 'https://github.com/savq/paq-nvim.git', install_path})
    require('pluginList')
    package.loaded['plugins'] = nil
    cmd('PaqSync')
else
    load_post_plugin_config()
end
