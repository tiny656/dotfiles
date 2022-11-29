--[[ init.lua ]]

-- LEADER
-- These keybindings need to be defined before the first /
-- is called; otherwise, it will default to "\"
vim.g.mapleader = ";"
vim.g.localleader = "\\"

-- IMPORTS
require('vars')      -- Variables
require('opts')      -- Options
require('keys')      -- Keymaps
require('plug')      -- Plugins
require('colorscheme')      -- Colorscheme

-- Plugin-config
require('plugin-config.nvim-tree')
require('plugin-config.lualine')
require('plugin-config.dracula')
