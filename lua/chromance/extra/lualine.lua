local colors = require("chromance.colors").get();

local M = {}

M.normal = {
  a = { bg = colors.yellow, fg = colors.dark1, gui = "bold" },
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
  a = { bg = colors.green, fg = colors.dark1 },
  b = { bg = colors.dimmed5, fg = colors.green },
}

M.command = {
  a = { bg = colors.yellow, fg = colors.dark1 },
  b = { bg = colors.dimmed5, fg = colors.yellow },
}

M.visual = {
  a = { bg = colors.red, fg = colors.dark1 },
  b = { bg = colors.dimmed5, fg = colors.red },
}

M.replace = {
  a = { bg = colors.red, fg = colors.dark1 },
  b = { bg = colors.dimmed5, fg = colors.red },
}

M.inactive = {
  a = { bg = colors.dark1, fg = colors.yellow },
  b = { bg = colors.dark1, fg = colors.dark1 },
}

return M
