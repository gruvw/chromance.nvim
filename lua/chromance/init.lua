local config = require("chromance.config")
local theme = require("chromance.theme")
local groups = require("chromance.groups")
local highlight = require("chromance.utils.highlight")
local extra = require("chromance.extra")

---@class Chromance
local M = {}

function M.setup(options)
  config.setup(options)
end

function M.load()
  if vim.g.colors_name then
    vim.cmd("hi clear")
  end

  vim.o.termguicolors = true
  vim.g.colors_name = "chromance"

  local colors = theme.colors(config.options);
  local highlight_groups = groups.highlight_groups(colors);
  highlight.apply_highlights(highlight_groups)

  extra.apply_extra(colors)
end

return M
