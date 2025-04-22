local M = {}

--- @param c Colors The color palette
--- @param config Config
function M.get(c, config)
  return {
    LuaSnipPlace = { bg = c.editor.highlight_background, },
  }
end

return M
