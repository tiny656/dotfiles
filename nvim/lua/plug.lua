-- [[ plug.lua ]]

local install_path = vim.fn.stdpath('config') .. '/site/pack/start/packer.nvim'
local packer_bootstrap

if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
  vim.notify("正在安装Pakcer.nvim，请稍后...")
  packer_bootstrap = vim.fn.system({
    "git",
    "clone",
    "--depth",
    "1",
    "https://github.com/wbthomason/packer.nvim",
    -- "https://gitcode.net/mirrors/wbthomason/packer.nvim",
    install_path,
  })
  vim.notify("Pakcer.nvim 安装完毕")
end

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
  vim.notify("没有安装 packer.nvim")
  return
end

packer.init({
  package_root = vim.fn.stdpath('config') .. '/site/pack'
})

return packer.startup(function(use)
  -- [[ Plugins Go Here ]]
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  use {
      'nvim-tree/nvim-tree.lua',
      requires = { 'nvim-tree/nvim-web-devicons' }
  }

  -- [[ Theme ]]
  use { 'mhinz/vim-startify' }
  use {
      'nvim-lualine/lualine.nvim',
      requires = {'kyazdani42/nvim-web-devicons', opt = true}
  }
  use { 'Mofiqul/dracula.nvim' }


  if pack_bootstrap then
      packer.sync()
  end
end)
