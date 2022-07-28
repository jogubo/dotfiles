-------------------------------------------------
------------------ HARDLINE ---------------------
-------------------------------------------------

----------------- BUFFER LINE -------------------
-- require('hardline').setup {
--     bufferline_settings = {
--         exclude_terminal = false,
--         show_index = true,
--         separator = "|",
--     },
-- }
require('bufbar').setup {
    theme = 'nordic',
    show_tabs = true,
    show_bufname = 'all',
    show_flags = true,
    show_alternate = false,
    modifier = ':t',
    separator = '|',
}
----------------- STATUS LINE -------------------

require('hardline').setup {
    -- bufferline = true,
    theme = 'nordic',
    sections = {
        {class = 'mode', item = require('hardline.parts.mode').get_item},
        {class = 'high', item = require('hardline.parts.git').get_item, hide = 80},
        '%<',
        {class = 'med', item = require('hardline.parts.filename').get_item},
        {class = 'med', item ='%='},
        {class = 'low', item = require('hardline.parts.wordcount').get_item, hide = 80},
        {class = 'error', item = require('hardline.parts.lsp').get_error},
        {class = 'warning', item = require('hardline.parts.lsp').get_warning},
        {class = 'warning', item = require('hardline.parts.whitespace').get_item},
        {class = 'high', item = require('hardline.parts.filetype').get_item, hide = 80},
        {class = 'mode', item = require('hardline.parts.line').get_item},
    },
}



