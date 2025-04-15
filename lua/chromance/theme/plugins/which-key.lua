local M = {}

--- @param c Colors The color palette
--- @param config Config
function M.get(c, config, _)
  local isBackgroundClear = vim.tbl_contains(config.background_clear, "which-key")
  local whichkey_bg = c.editorSuggestWidget.background
  local transparent_bg = c.editor.background
  local transparent_bg_border = c.dimmed2
  return {
    WhichKey = { fg = c.blue },
    WhichKeySeperator = { fg = c.red },
    WhichKeyGroup = { fg = c.magenta },
    WhichKeyDesc = { fg = c.yellow },
    WhichKeyNormal = { bg = isBackgroundClear and transparent_bg or whichkey_bg },
    WhichKeyBorder = isBackgroundClear and {
      bg = transparent_bg,
      fg = transparent_bg_border,
    } or {
      bg = whichkey_bg,
      fg = whichkey_bg,
    },
  }
end

return M
