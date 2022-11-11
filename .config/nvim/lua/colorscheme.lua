-------------------------------------------------
------------ PALETTE DE COULEURS ----------------
-------------------------------------------------

local g = vim.g
local cmd = vim.cmd
require('nord').set()
g.nord_italic = true
g.nord_borders = true
cmd[[highlight VertSplit guifg=#3b4252]]
