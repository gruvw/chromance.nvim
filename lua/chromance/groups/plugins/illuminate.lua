local M = {}

--- @param colors Colors
--- @param options Options
function M.get(colors, options)
  return {
    IlluminatedWordRead = { bg = colors.editor.background_highlight },
    IlluminatedWordText = { bg = colors.editor.background_highlight },
    IlluminatedWordWrite = { bg = colors.editor.background_highlight },
  }
end

return M
