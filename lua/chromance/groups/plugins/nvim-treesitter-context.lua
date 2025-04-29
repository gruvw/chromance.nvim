local M = {}

--- @param colors Colors
--- @param options Options
function M.get(colors, options)
  return {
    TreesitterContext = { bg = colors.editor.background_light, },
  }
end

return M
