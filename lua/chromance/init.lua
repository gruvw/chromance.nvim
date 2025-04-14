local config = require("chromance.config")
local groups = require("chromance.groups")
local highlight = require("chromance.util.highlight")
local colors = require("chromance.colors")

---@class Chromance
local M = {}

function M.load()
  if vim.g.colors_name then
    vim.cmd([[hi clear]])
  end

  vim.o.termguicolors = true
  vim.g.colors_name = "chromance"

  local cs = colors.get(config.options);
  local hl_groups = groups.highlight_groups(cs);
  highlight.apply_groups(hl_groups)
end

M.setup = function(options)
  config.setup(options)
end

return M
