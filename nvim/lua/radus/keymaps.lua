vim.api.nvim_set_keymap('', 'q', '<nop>', {})
vim.api.nvim_set_keymap('n', '<S-u>', '<C-r>', { noremap = true })

vim.api.nvim_set_keymap('i', '<C-c>', '<esc>', { noremap = true })

vim.api.nvim_set_keymap('t', '<esc>', '<C-\\><C-n>', { noremap = true })

vim.api.nvim_set_keymap('n', '<leader>h', '<C-W>h', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>j', '<C-W>j', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>k', '<C-W>k', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>l', '<C-W>l', { noremap = true })

vim.api.nvim_set_keymap('n', '<leader>o', 'o<esc>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>O', 'O<esc>', { noremap = true })

vim.api.nvim_set_keymap('n', '<leader>y', '"+y', { noremap = true })
vim.api.nvim_set_keymap('v', '<leader>y', '"+y', { noremap = true })
vim.api.nvim_set_keymap('n', 'Y', 'v$y', { noremap = true })

vim.api.nvim_set_keymap('n', '<leader>p', '"+p', { noremap = true })
vim.api.nvim_set_keymap('v', '<leader>p', '"+p', { noremap = true })
vim.api.nvim_set_keymap('v', '<leader>P', '"_dP', { noremap = true })

vim.api.nvim_set_keymap('n', '<leader>d', '"_d', { noremap = true })
vim.api.nvim_set_keymap('v', '<leader>d', '"_d', { noremap = true })

vim.api.nvim_set_keymap('x', 'K', ":move '<-2<cr>gv-gv", { noremap = true })
vim.api.nvim_set_keymap('x', 'J', ":move '>+1<cr>gv-gv", { noremap = true })

vim.api.nvim_set_keymap('n', '<leader>u', ':UndotreeShow<cr>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>e', ':NvimTreeToggle<cr>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>n', ':NvimTreeFindFile<cr>', { noremap = true })

vim.api.nvim_set_keymap('n', '<leader>t', ':split | :terminal<cr>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>tt', ':vsplit | :terminal<cr>', { noremap = true, silent = true })

vim.api.nvim_set_keymap('n', '<leader>=', ':vertical resize +5<cr>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>-', ':vertical resize -5<cr>', { noremap = true, silent = true })

vim.api.nvim_set_keymap('n', '<C-s>', ':source ~/.config/nvim/init.lua<cr>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>,', ':vsplit ~/.config/nvim/init.lua<cr>', { noremap = true })
