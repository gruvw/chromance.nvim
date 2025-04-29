local config = require("chromance.config")
local theme = require("chromance.theme")

local M = {}

local colors = theme.colors(config.options)
local line_background = colors.editor.background_dark

M.normal = {
  a = { bg = colors.yellow, fg = line_background, gui = "bold", },
  b = { bg = line_background, fg = colors.yellow, },
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
  a = { bg = colors.green, fg = colors.black, },
  b = { bg = line_background, fg = colors.green, },
}

M.command = {
  a = { bg = colors.yellow, fg = colors.black, },
  b = { bg = line_background, fg = colors.yellow, },
}

M.visual = {
  a = { bg = colors.red, fg = colors.black, },
  b = { bg = line_background, fg = colors.red, },
}

M.replace = {
  a = { bg = colors.red, fg = colors.black, },
  b = { bg = line_background, fg = colors.red, },
}

M.inactive = {
  a = { bg = colors.black, fg = colors.yellow, },
  b = { bg = colors.black, fg = colors.black, },
}

return M
