local status, dracula = pcall(require, "dracula")
if not status then
  vim.notify("没有找到 dracula")
  return
end

dracula.setup({
  -- use transparent background
  transparent_bg = true, -- default false
  -- set italic comment
  italic_comment = true, -- defautl false
})
