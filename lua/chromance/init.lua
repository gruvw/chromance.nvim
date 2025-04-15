local config = require("chromance.config")
local theme = require("chromance.theme")
local highlight = require("chromance.utils.highlight")
local colors = require("chromance.colors")
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

  local cs = colors.get();
  local hl_groups = theme.highlight_groups(cs);
  highlight.apply_highlights(hl_groups)

  extra.apply_extra(cs)
end

return M
