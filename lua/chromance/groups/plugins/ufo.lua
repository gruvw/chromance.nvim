local M = {}

--- @param colors Colors
--- @param options Options
function M.get(colors, options)
  return {
    UfoFoldedBg = {
      bg = colors.editor.background,
    },
    FoldColumn = {
      bg = colors.editor.background,
      fg = colors.editor.text,
    },
  }
end

return M
