local M = {}

--- @param c Colors The color palette
function M.get(c, _, _)
  return {
    Beacon = { bg = c.base.blue },
  }
end

return M
