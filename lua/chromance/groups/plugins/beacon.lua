local M = {}

--- @param colors Colors
--- @param options Options
function M.get(colors, options)
  return {
    Beacon = { bg = colors.blue },
  }
end

return M
