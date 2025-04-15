local config = require("chromance.config")

local terminal = require("chromance.extra.terminal")
local devicons = require("chromance.extra.devicons")

local M = {}

---@param colors Colors
function M.apply_extra(colors)
  if config.terminal_colors then
    terminal.terminal(colors)
  end

  if config.options.devicons then
    devicons.apply_icons(colors)
  end
end

return M
