local M = {}

--- @param c Colors The color palette
function M.get(c, _)
  return {
    OilDir = { fg = c.green, bold = true, },
    OilFile = { fg = c.white, },
    OilSize = { fg = c.white, italic = c.italic_enabled, },
  }
end

return M
