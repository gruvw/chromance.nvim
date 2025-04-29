local M = {}

--- @param colors Colors
--- @param options Options
function M.get(colors, options)
  return {
    IlluminatedWordRead = { bg = colors.editor.background_light },
    IlluminatedWordText = { bg = colors.editor.background_light },
    IlluminatedWordWrite = { bg = colors.editor.background_light },
  }
end

return M
