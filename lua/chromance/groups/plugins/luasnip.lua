local M = {}

--- @param colors Colors
--- @param options Options
function M.get(colors, options)
  return {
    LuaSnipPlace = colors.groups.match_primary,
  }
end

return M
