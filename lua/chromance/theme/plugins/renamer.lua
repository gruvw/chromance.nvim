local M = {}

--- @param c Colors The color palette
--- @param config Config
function M.get(c, config, _)
  local isBackgroundClear = vim.tbl_contains(config.background_clear, "renamer")
  return {
    RenamerNormal = {
      bg = isBackgroundClear and c.editor.background or c.editorHoverWidget.background,
      fg = c.editorHoverWidget.foreground,
    },
    RenamerBorder = {
      bg = c.editor.background,
      fg = isBackgroundClear and c.editorSuggestWidget.foreground or c.editorSuggestWidget.background,
    },
    RenamerTitle = isBackgroundClear and {
      fg = c.yellow,
      bold = true,
    } or {
      bg = c.yellow,
      fg = c.black,
      bold = true,
    },
  }
end

return M
