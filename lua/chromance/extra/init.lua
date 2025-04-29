local terminal = require("chromance.extra.terminal")
local devicons = require("chromance.extra.devicons")

local M = {}

---@param colors Colors
---@param options Options
function M.apply_extra(colors, options)
  if options.terminal_colors then
    terminal.terminal(colors)
  end

  if options.devicons then
    devicons.apply_icons(colors)
  end
end

return M
