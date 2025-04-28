local M = {}

--- @param colors Colors
--- @param options Options
function M.get(colors, options)
  return {
    OilDir = { fg = colors.green, bold = true, },
    OilFile = { fg = colors.white, },
    OilSize = { fg = colors.white, italic = options.italic_enabled, },
  }
end

return M
