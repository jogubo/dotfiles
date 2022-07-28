-------------------------------------------------
------------------ LSP CONFIG -------------------
-------------------------------------------------

local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())

--------------------- Bash ----------------------
require('lspconfig').bashls.setup{}


-------------------- Python ---------------------
require('lspconfig').pylsp.setup{}


------------------ HTML & CSS -------------------
capabilities.textDocument.completion.completionItem.snippetSupport = true

require'lspconfig'.html.setup {
  cmd = {"vscode-html-languageserver", "--stdio"},
  capabilities = capabilities,
}
require'lspconfig'.cssls.setup {
  cmd = {"vscode-css-languageserver", "--stdio"},
  capabilities = capabilities,
}


------------ JavaScript & TypeScript ------------
require('lspconfig').denols.setup{
  linter = true
}

--------------------- C & C++ -------------------
require('lspconfig').ccls.setup{}


---------------------- Lua ----------------------
local sumneko_root_path = "/usr/share/lua-language-server"
local sumneko_binary = "/usr/bin/lua-language-server"

require('lspconfig').sumneko_lua.setup {
    cmd = {sumneko_binary, "-E", sumneko_root_path .. "/main.lua"},
    settings = {
        Lua = {
            diagnostics = {
                globals = {'vim'}
            },
            runtime = {
                version = "LuaJIT",
                path = vim.split(package.path, ";")
            },
            workspace = {
                library = {
                    [vim.fn.expand("$VIMRUNTIME/lua")] = true,
                    [vim.fn.expand("$VIMRUNTIME/lua/vim/lsp")] = true
                },
            },
            telemetry = {
                enable = false,
            },
        },
    },
}
