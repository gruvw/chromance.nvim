---@class chromance.util.extri
local M = {}

---@param colors Colors
function M.terminal(colors)
  -- dark
  vim.g.terminal_color_0 = colors.terminal.black
  vim.g.terminal_color_8 = colors.terminal.dimmed3

  -- light
  vim.g.terminal_color_7 = colors.terminal.white
  vim.g.terminal_color_15 = colors.terminal.white

  -- colors
  vim.g.terminal_color_1 = colors.terminal.red
  vim.g.terminal_color_9 = colors.terminal.red

  vim.g.terminal_color_2 = colors.terminal.green
  vim.g.terminal_color_10 = colors.terminal.green

  vim.g.terminal_color_3 = colors.terminal.yellow
  vim.g.terminal_color_11 = colors.terminal.yellow

  vim.g.terminal_color_4 = colors.terminal.blue
  vim.g.terminal_color_12 = colors.terminal.blue

  vim.g.terminal_color_5 = colors.terminal.magenta
  vim.g.terminal_color_13 = colors.terminal.magenta

  vim.g.terminal_color_6 = colors.terminal.cyan
  vim.g.terminal_color_14 = colors.terminal.cyan
end

return M
