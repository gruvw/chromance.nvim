---@class chromance.util.extri
local M = {}

---@param colors Colors
function M.terminal(colors)
  -- dark
  vim.g.terminal_color_0 = colors.base.black
  vim.g.terminal_color_8 = colors.base.dimmed3

  -- light
  vim.g.terminal_color_7 = colors.base.white
  vim.g.terminal_color_15 = colors.base.white

  -- colors
  vim.g.terminal_color_1 = colors.base.red
  vim.g.terminal_color_9 = colors.base.red

  vim.g.terminal_color_2 = colors.base.green
  vim.g.terminal_color_10 = colors.base.green

  vim.g.terminal_color_3 = colors.base.yellow
  vim.g.terminal_color_11 = colors.base.yellow

  vim.g.terminal_color_4 = colors.base.blue
  vim.g.terminal_color_12 = colors.base.blue

  vim.g.terminal_color_5 = colors.base.magenta
  vim.g.terminal_color_13 = colors.base.magenta

  vim.g.terminal_color_6 = colors.base.cyan
  vim.g.terminal_color_14 = colors.base.cyan
end

return M
