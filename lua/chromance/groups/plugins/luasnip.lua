local M = {}

--- @param c Colors The color palette
--- @param config Config
--- @param hp Helper
function M.get(c, config, hp)
  return {
    LuaSnipPlace = { bg = c.editor.lineHighlightBackground, },
  }
end

return M
