local M = {}

--- @param c Colors The color palette
function M.get(c, _, _)
  return {
    AlphaButton = { fg = c.magenta },
    AlphaFooter = { fg = c.blue },
    AlphaHeader = { fg = c.yellow },
  }
end

return M
