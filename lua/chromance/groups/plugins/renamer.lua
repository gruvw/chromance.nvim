local M = {}

--- @param c Colors The color palette
--- @param config Config
function M.get(c, config, _)
  return {
    RenamerNormal = {
      bg = c.editor.background,
      fg = c.editorHoverWidget.foreground,
    },
    RenamerBorder = {
      bg = c.editor.background,
      fg = c.editorSuggestWidget.foreground,
    },
    RenamerTitle = {
      fg = c.yellow,
      bold = true,
    },
  }
end

return M
