local colors = require("chromance.colors").get();

local M = {}

M.normal = {
  a = { bg = colors.yellow, fg = colors.black, gui = "bold" },
  b = { bg = colors.dimmed5, fg = colors.yellow },
  c = {
    bg = colors.statusBar.background,
    fg = colors.statusBar.activeForeground,
  },
  x = {
    bg = colors.statusBar.background,
    fg = colors.statusBar.activeForeground,
  },
}

M.insert = {
  a = { bg = colors.green, fg = colors.black },
  b = { bg = colors.dimmed5, fg = colors.green },
}

M.command = {
  a = { bg = colors.yellow, fg = colors.black },
  b = { bg = colors.dimmed5, fg = colors.yellow },
}

M.visual = {
  a = { bg = colors.red, fg = colors.black },
  b = { bg = colors.dimmed5, fg = colors.red },
}

M.replace = {
  a = { bg = colors.red, fg = colors.black },
  b = { bg = colors.dimmed5, fg = colors.red },
}

M.inactive = {
  a = { bg = colors.black, fg = colors.yellow },
  b = { bg = colors.black, fg = colors.black },
}

return M
