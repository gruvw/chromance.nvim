local M = {}

--- @param colors Colors
--- @param options Options
function M.get(colors, options)
  return {
    LuaSnipPlace = { bg = colors.editor.background_highlight, },
  }
end

return M
