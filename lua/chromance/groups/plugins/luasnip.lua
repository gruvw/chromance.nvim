local M = {}

--- @param colors Colors
--- @param options Options
function M.get(colors, options)
  return {
    -- LuaSnipPlace = {
    --   bg = colors.editor.background_light,
    -- },
    LuaSnipPlace = colors.groups.match_secondary,
  }
end

return M
