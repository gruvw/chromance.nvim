local M = {}

--- @param colors Colors
--- @param options Options
function M.get(colors, options)
  return {
    AlphaButton = { fg = colors.red },
    AlphaFooter = { fg = colors.blue },
    AlphaHeader = { fg = colors.yellow },
  }
end

return M
