local M = {}
local theme = require('ring0light.theme')

M.setup = function()
  vim.cmd('hi clear')

  vim.o.background = 'light'
  if vim.fn.exists('syntax_on') then
    vim.cmd('syntax reset')
  end

  vim.o.termguicolors = true
  vim.g.colors_name = 'ring0light'

  theme.set_highlights()
end

return M
