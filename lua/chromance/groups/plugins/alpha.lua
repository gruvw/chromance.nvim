local M = {}

--- @param c Colors The color palette
function M.get(c, _)
  return {
    AlphaButton = { fg = c.red },
    AlphaFooter = { fg = c.blue },
    AlphaHeader = { fg = c.yellow },
  }
end

return M
