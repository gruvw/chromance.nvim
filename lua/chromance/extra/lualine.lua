local config = require("chromance.config")
local theme = require("chromance.theme")

local M = {}

local colors = theme.colors(config.options)
local statusline_bg = colors.editor.background_dark

M.normal = {
  a = { bg = colors.yellow, fg = statusline_bg, gui = "bold", },
  b = { bg = statusline_bg, fg = colors.yellow, },
  c = {
    bg = statusline_bg,
    fg = colors.editor.text,
  },
  x = {
    bg = statusline_bg,
    fg = colors.editor.text,
  },
}

M.insert = {
  a = { bg = colors.green, fg = colors.black, },
  b = { bg = statusline_bg, fg = colors.green, },
}

M.command = {
  a = { bg = colors.yellow, fg = colors.black, },
  b = { bg = statusline_bg, fg = colors.yellow, },
}

M.visual = {
  a = { bg = colors.red, fg = colors.black, },
  b = { bg = statusline_bg, fg = colors.red, },
}

M.replace = {
  a = { bg = colors.red, fg = colors.black, },
  b = { bg = statusline_bg, fg = colors.red, },
}

M.inactive = {
  a = { bg = colors.black, fg = colors.yellow, },
  b = { bg = colors.black, fg = colors.black, },
}

return M
