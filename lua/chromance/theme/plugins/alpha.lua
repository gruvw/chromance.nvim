local M = {}

--- @param c Colors The color palette
function M.get(c, _, _)
  return {
    AlphaButton = { fg = c.red },
    AlphaFooter = { fg = c.cyan },
    AlphaHeader = { fg = c.yellow },
  }
end

return M
