local M = {}

--- @param c Colors The color palette
function M.get(c, _)
  return {
    IlluminatedWordRead = { bg = c.editor.wordHighlightBackground },
    IlluminatedWordText = { bg = c.editor.selectionHighlightBackground },
    IlluminatedWordWrite = { bg = c.editor.wordHighlightStrongBackground },
  }
end

return M
