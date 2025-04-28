local M = {}

--- @param colors Colors
--- @param options Options
function M.get(colors, options)
  return {
    RenamerNormal = {
      bg = colors.editor.background,
      fg = colors.editorHoverWidget.foreground,
    },
    RenamerBorder = {
      bg = colors.editor.background,
      fg = colors.editorSuggestWidget.foreground,
    },
    RenamerTitle = {
      fg = colors.yellow,
      bold = true,
    },
  }
end

return M
