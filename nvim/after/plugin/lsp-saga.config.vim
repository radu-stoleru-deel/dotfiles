lua << EOF
 local saga = require 'lspsaga'
 
-- saga.init_lsp_saga {
--     error_sign = '',
--     warn_sign = '●',
--     hint_sign = 'H',
--     infor_sign = 'I',
--     border_style = 'round',
-- }
EOF

nnoremap <silent> <C-j> <Cmd>Lspsaga diagnostic_jump_next<CR>
nnoremap <silent>K <Cmd>Lspsaga hover_doc<CR>
inoremap <silent> <C-k> <Cmd>Lspsaga signature_help<CR>
nnoremap <silent> gh <Cmd>Lspsaga lsp_finder<CR>
