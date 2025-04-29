local M = {}

--- @param colors Colors
--- @param options Options
function M.get(colors, options)
  return {
    RenamerNormal = colors.groups.normal,
    RenamerBorder = colors.groups.border,
    RenamerTitle = {
      fg = colors.yellow,
      bold = true,
    },
  }
end

return M
