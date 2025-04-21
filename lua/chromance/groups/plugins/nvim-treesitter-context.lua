local M = {}

--- @param c Colors The color palette
function M.get(c, _, _)
  return {
    TreesitterContext = { bg = c.editor.background_dark, },
  }
end

return M
