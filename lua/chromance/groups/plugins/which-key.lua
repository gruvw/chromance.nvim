local M = {}

--- @param colors Colors
--- @param options Options
function M.get(colors, options)
  return {
    WhichKey = {
      fg = colors.blue,
    },
    WhichKeySeperator = {
      fg = colors.red,
    },
    WhichKeyGroup = {
      fg = colors.red,
    },
    WhichKeyDesc = {
      fg = colors.yellow,
    },
    WhichKeyNormal = colors.groups.normal,
    WhichKeyBorder = colors.groups.border,
  }
end

return M
