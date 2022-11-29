--[[ keys.lua ]]
local map = vim.api.nvim_set_keymap

map('', '<leader>q', ':q<CR>', { silent = true })
map('', '<leader>w', ':w<CR>', { silent = true })
map('', '<leader>Q', ':qa!<CR>', { silent = true })
map('', '<leader>WQ', ':wa<CR>', { silent = true })

-- Move to next window
map('n', 'nw', '<C-W><C-W>', { noremap = true, silent = true })

-- Toggle nvim-tree
map('n', '<F1>', ':NvimTreeToggle<CR>', { noremap = true, silent = true })
